require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

#### Boolean Assertions
# Write a minitest assertion that will fail if the value.odd? is not true.

#### Equality Assertions
# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.
# class Equality_Test < Minitest::Test
#   def setup
#     @correct_str = 'XYZ'
#     @incorrect_str = 'ABC'
#   end

#   def test_equality
#     assert_equal('xyz', @correct_str.downcase)
#   end

#   def test_bad_equality
#     assert_equal('xyz', @incorrect_str.downcase)
#   end
# end

#### Nil Assertions
# Write a minitest assertion that will fail if value is not nil.
# class NilAssertion < Minitest::Test
#   def setup
#     @bad_value = "41"
#     @nil_value = nil
#   end

#   def test_for_nil
#     assert_nil(@nil_value)
#   end

#   def test_for_nil_bad
#     assert_nil(@bad_value)
#   end
# end

#### Empty Object Assertions
# Write a minitest assertion that will fail if the Array list is not empty.

# class Test_Empty_Object < Minitest::Test
#   def setup
#     @empty_array = []
#     @array = [1, 2, 3]
#   end

#   def test_for_empty
#     assert_empty(@empty_array)
#   end

#   # def test_for_empty_bad
#   #   assert_empty(@array)
#   # end
# end

#### Included Object Assertions
# class Test_Included_Object < Minitest::Test
#   def setup
#     @success = ['abc', 'def', 'xyz']
#     @fail = ['abc', 'def', 'xyj']
#   end

#   def test_with_xyz
#     assert_includes(@success, 'xyz')
#   end

#   def test_wo_xyz
#     assert_includes(@fail, 'xyz', msg = "Does not include 'xyz'")
#   end
# end

#### Exception Assertions
# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

# class TestExceptions < Minitest::Test
#   def setup
#   end

#   def test_exception_error
#     assert_raises(NoExperienceError) do 
#       employee.hire
#     end
#   end
# end

#### Type Assertions
# Write a minitest assertion that will fail if value is not an instance of the Numeric class exactly. value may not be an instance of one of Numeric's superclasses.

# class TestType < Minitest::Test
#   def setup
#     @success = Numeric.new
#     @fail = "hi"
#   end

#   def test_success
#     assert_instance_of(Numeric, @success)
#   end

#   def test_failure
#     assert_instance_of(Numeric, @fail)
#   end
# end

#### Kind Assertions
# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).

# class TestKind < Minitest::Test
#   def setup
#     @value = 1
#   end

#   def test_success
#     assert_kind_of(Numeric, @value)
#   end
# end

#### Same Object Assertions
# Write a test that will fail if list and the return value of list.process are different objects.
# class List
#   def process
#     1
#   end
# end

# class TestSameObject < Minitest::Test
#   def setup
#     @list = List.new
#     @value2 = list.process
#   end

#   def test_success
#     assert_same(@list, @value2)
#   end
# end

#### Refutations
# Write a test that will fail if 'xyz' is one of the elements in the Array list:

class TestRefutation < Minitest::Test
  def setup
    @value = 'xyz'
    @array = ['xyz', 'abc', 'def']
  end

  def test_refutation
    refute_includes(@array, @value2)
  end
end