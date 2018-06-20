module EmailReportable
  def send_report
    p "about to go send that report..."
    # write some logic to send the report
    p "totally just sent that report"
  end
end

class Employee
  attr_reader :first_name, :last_name, :active, :salary
  attr_writer :first_name, :active

  def initialize(input_options)
    # {:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => true}
    # how can i get the first_name from input_options?
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

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

# employee2.print_info
# employee2.give_annual_raise
# employee2.print_info

# p employee2.first_name
# employee2.first_name = 'billybob'
# p employee2.first_name

class Manager < Employee
  include EmailReportable
  attr_reader :employees
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager1 = Manager.new({:first_name => "Manny", :last_name => "Jones", :salary => 100000, :active => true, :employees => [employee1, employee2]})

manager1.print_info
manager1.send_report
# p "before firing"
# p employee1.active
# p employee2.active
# p "*" * 50
# manager1.fire_all_employees
# p "after firing"
# p employee1.active
# p employee2.active



# an intern can do everything an employee can, and can also send reports
class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new(first_name: "Ingrid", last_name: "alksdhfl", salary: 0, active: true)

intern1.print_info
intern1.send_report