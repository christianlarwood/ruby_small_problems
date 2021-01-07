=begin
algorithm:
- initialize empty array
- initialize register and assign to 0
- split string into elements, iterate over each element
- conditional statements:
  INTEGER Place a value n in the "register". Do not modify the stack.
    - reassign register to n
  PUSH Push the register value on to the stack. Leave the value in the register.
    - push register value to stack
  ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
  SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
  MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
  DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
  MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
  POP Remove the topmost item from the stack and place in register
  PRINT Print the register value



=end



def minilang(string)
  stack = []
  register = 0
  string.split.each do |command|
    case command
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register = register / stack.pop
    when 'MOD' then register = register % stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else            register = command.to_i
    end
  end

end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')