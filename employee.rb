# model employees using ruby
# keep track of fn, ln, active status, salary

# array
# employee1 = ["Danilo", "Campos", 70000, true]
# employee2 = ["Majora", "Carter", 80000, false]

# # concatenation
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# # interpolation
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash
employee1 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => 70000, "active" => true}

employee2 = {"last_name" => "Carter", "salary" => 80000, "active" => false, "first_name" => "Majora"}

p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."
p "#{employee2['first_name']} #{employee2['last_name']} makes $#{employee2['salary']} per year."

