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
