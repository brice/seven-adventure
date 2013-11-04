#!/usr/bin/env ruby

def gets_to_i
    x = gets
    return x.to_i
end

puts "Guess a number"
response = rand(10)
guess = gets_to_i

while guess != response
    if guess > response
        puts "Too high"
    else
        puts "Too low"
    end
    puts "Guess again"
    guess = gets_to_i
end

puts "Congrats the answer is #{response}"