require 'minitest/autorun'
# require "minitest/reporters"
# Minitest::Reporters.use!

require_relative 'cash_register' 
require_relative 'transaction'

class TestCashRegister < Minitest::Test
  def setup
    @register = CashRegister.new(5000)
    @transaction = Transaction.new(500)
    @transaction.amount_paid = 500
  end

  def test_register_balance
    assert_equal(5000, @register.total_money)
  end

  def test_accept_money
    assert_equal(5500, @register.accept_money(@transaction))
  end

  def test_change
    assert_equal(0, @register.change(@transaction))
  end

  def test_give_receipt
    register = CashRegister.new(500)
    transaction = Transaction.new(45)
    
    assert_output("You've paid $45.\n") do
      register.give_receipt(transaction)
    end
  end

  def test_prompt_for_payment
    input = StringIO.new("500\n")
    # @transaction.prompt_for_payment(input: input)
    assert_output("You owe $500.\nHow much are you paying?\n") do
      @transaction.prompt_for_payment(input: input)
    end
    assert_equal(500, @transaction.amount_paid)
  end

  
end


