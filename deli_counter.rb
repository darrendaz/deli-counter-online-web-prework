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

def take_a_number(queue, name)
   queue.push(name)
   puts "Welcome, #{name}. You are number #{queue.length} in line."
end
    

def now_serving(queue)
  if queue.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue.shift}."
  end
end

take_a_number(katz_deli, "Kent")
take_a_number(katz_deli, "Grace")