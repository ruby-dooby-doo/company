
class Employee
  attr_reader :first_name, :last_name, :active, :salary
  attr_writer :first_name

  def initialize(input_options)
    # {:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => true}
    # how can i get the first_name from input_options?
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    # @last_name = input_last_name
    # @salary = input_salary
    # @active = input_active
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
  def send_report
    p "about to go send that report..."
    # write some logic to send the report
    p "totally just sent that report"
  end
end

manager1 = Manager.new({:first_name => "Manny", :last_name => "Jones", :salary => 100000, :active => true})

manager1.print_info
manager1.send_report
