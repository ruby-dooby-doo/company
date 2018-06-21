# an intern can do everything an employee can, and can also send reports
class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new(first_name: "Ingrid", last_name: "alksdhfl", salary: 0, active: true)

intern1.print_info
intern1.send_report
