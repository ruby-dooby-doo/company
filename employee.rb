# model employees using ruby
# keep track of fn, ln, active status, salary

# array
employee1 = ["Danilo", "Campos", 70000, true]
employee2 = ["Majora", "Carter", 80000, false]

# concatenation
p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# interpolation
p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."
