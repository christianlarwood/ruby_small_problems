class Banner
  def initialize(message, width = 0)
    @message = message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    if @width > 1
      "+-#{'-' * @width}-+"
    else
      "+-#{'-' * @message.size}-+"
    end
  end

  def empty_line
    if @width > 1
      "| #{' ' * @width} |"
    else
      "| #{' ' * @message.size} |"
    end
  end

  def message_line
    if @width > 1
      # num_of_lines, remainder = @message.size.divmod(@width)
      # num_of_lines += 1 if remainder > 0
  
      parts_of_message = []
      @message.chars.each_slice(@width + 1) do |substring|
        parts_of_message << "| #{substring.join} |"
      end
      parts_of_message.each do |sub|
        "| #{sub} |"
      end
    else
      "| #{@message} |"
    end
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 15)
puts banner

banner = Banner.new('')
puts banner