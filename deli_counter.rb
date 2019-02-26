katz_deli = []

def line(list)
  message = "The line is currently:"
  
  if list.length < 1
    puts "The line is currently empty."
  else
    list.each_with_index {|person, index| message << " #{index + 1}. #{person}"}
    puts message
  end
end

def take_a_number(queue)
   number = 1
   queue.push(number)
   puts "Welcome, #{number}. You are number #{queue.length} in line."
   number += 1
end
    

def now_serving(queue)
  if queue.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue.shift}."
  end
end

take_a_number(katz_deli)
take_a_number(katz_deli)
now_serving(katz_deli)