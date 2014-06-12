#### Question 1

def square(x)
  x * x
end

y = square(2)
# What is the value of 'x' after this line executes?

# x doesnt exist within the scope of y = square(2); if you tried to access it, ruby would
# throw and error


#### Question 2
# What is the value of `age` after we call `get_older`?

def get_older(age)
  age = age + 1
end

age = 10
get_older(age)

# 10 - the method returns age + 1 but doesnt actually modify age itself


#### Question 3
# What is the return value of `jump` when called on the last line here?

def how_high
  energy * energy
end

def jump
  height = how_high()
  height - 2
end

energy = 2
jump

# You would get an error in the how_high method- because energy is not passed in as
# a parameter to the method, it won't know what you're talking about


#### Question 4
# Write a method that accepts a string and an optional multiplier (defaults to 3)
# and returns the original string multiplied that many times (using the * operator).
# Do not use an options hash or keyword arguments.

def string_mul (str, multiplier = 3)
  str * multiplier
end


#### Question 5
# Write code using this method to create the string "HELLO THERE, PUNY HUMANS"

def greeting(name:, salutation: 'Hi', volume: :low)
  greeting = "#{salutation} there, #{name}"
  volume == :high ? greeting.upcase : greeting
end

greeting(name: "puny humans", salutation: 'hello', volume: :low)
