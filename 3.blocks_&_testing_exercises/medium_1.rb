#### Listening Device
# class Device
#   attr_reader :recordings

#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     recording = yield if block_given?
#     record(recording) if recording
#   end

#   def play
#     puts @recordings.last
#   end
# end

# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# listener.play # Outputs "Hello World!"

####Text Analyzer
# class TextAnalyzer
#   def process
#     file = File.open("sample_text.txt")
#     # p file.read.split
#     yield(file.read)
#     # your implementation
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts "There are #{file.count('.')} sentences." }
# analyzer.process { |file| puts "There are #{file.count('\n')} new lines." }
# analyzer.process { |file| puts "There are #{file.split.size} words." }

#### Passing Parameters Part 1
# items = ['apples', 'corn', 'cabbage', 'wheat']

# # def gather(items)
# #   puts "Let's start gathering food."
# #   puts "#{items.join(', ')}"
# #   puts "Nice selection of food we have gathered!"
# # end

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Nice selection of food we have gathered!"
# end

# gather(items) { |food| puts food.join(', ') }

#### Passing Parameters Part 2
# birds = %w(raven finch hawk eagle)

# def organize(array)
#   yield(array)
# end

# organize(birds) do |array|
#   el1, el2, *raptors = array
#   p raptors
# end

#### Passing Parameters Part 3
# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do |*produce, wheat|
#   puts produce.join(', ')
#   puts wheat
# end

# # Let's start gathering food.
# # apples, corn, cabbage
# # wheat
# # We've finished gathering!

# gather(items) do |apples, *veggies, wheat|
#   puts apples
#   puts veggies.join(', ')
#   puts wheat
# end

# # Let's start gathering food.
# # apples
# # corn, cabbage
# # wheat
# # We've finished gathering!

# gather(items) do |apples, *produce|
#   puts apples
#   puts produce.join(', ')
# end




# gather(items) do |a, b, c, d |
#   puts "#{a}, #{b}, #{c}, and #{d}"
# end

# # Let's start gathering food.
# # apples, corn, cabbage, and wheat
# # We've finished gathering!

#### Method to Proc
# def convert_to_base_8(n)
#   n.method_name.method_name # replace these two method calls
# end

# # The correct type of argument must be used below
# base8_proc = method(argument).to_proc

# # We'll need a Proc object to make this code work. Replace `a_proc`
# # with the correct object
# p [8, 10, 12, 14, 16, 33].map(&a_proc)

# # The expected return value of map on this number array should be:

# # [10, 12, 14, 16, 20, 41]

#### Bubble Sort with Blocks
def bubble_sort!(array)
  size = array.length
  loop do
    swapped = false
    (1...size).each do |index|
      if block_given?
        result = yield(array[index - 1], array[index])
        if result == false
          array[index - 1], array[index] = array[index], array[index - 1]
          swapped = true
        end
      elsif array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end
    size -= 1
    break unless swapped
  end
  nil
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)