# an intern can do everything an employee can, and can also send reports

class Intern < Employee
  include EmailReportable
end
