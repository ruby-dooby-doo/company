require './email_reportable'
require './employee'
require './manager'
require './intern'



employee1 = Employee.new({:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => true})

# 'fancy'
employee2 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 80000, active: false)

manager1 = Manager.new({:first_name => "Manny", :last_name => "Jones", :salary => 100000, :active => true, :employees => [employee1, employee2]})

# manager1.print_info
# manager1.send_report
p "before firing"
p employee1.active
p employee2.active
p "*" * 50
manager1.fire_all_employees
p "after firing"
p employee1.active
p employee2.active



intern1 = Intern.new(first_name: "Ingrid", last_name: "alksdhfl", salary: 0, active: true)

intern1.print_info
intern1.send_report




# explicit options hash
employee1 = Employee.new({:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => true})

# 'fancy'
employee2 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 80000, active: false)

# employee1.print_info
# employee1.give_annual_raise
# employee1.print_info

# p employee1.first_name
# employee1.first_name = 'billybob'
# p employee1.first_name

employee2.print_info
employee2.give_annual_raise
employee2.print_info

p employee2.first_name
employee2.first_name = 'billybob'
p employee2.first_name
