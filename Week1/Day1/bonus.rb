#!/usr/bin/env ruby

response = rand(10)

puts "Guess a number"

guess = gets.to_i

while guess != response
    if guess > response
        puts "Too high"
    else
        puts "Too low"
    end
    puts "Guess again"
    guess = gets.to_i
end

puts "Congrats the answer is #{response}"