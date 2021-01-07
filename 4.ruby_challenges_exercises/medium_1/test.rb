# block with too many arguments passed to it
def too_many_args(arg1, arg2)
  yield(arg1, arg2)
end

arg1 = "Hello"
arg2 = "World"

too_many_args(arg1, arg2) { |arg| puts arg }

# block with too few arguments passed to it
def too_few_args(arg1)
  yield(arg1)
end

arg1 = "Hello"
arg2 = "World"

too_few_args(arg1) { |arg1, arg2 | puts "#{arg1} #{arg2}" }