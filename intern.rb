# an intern can do everything an employee can, and can also send reports
module Actualize
  class Intern < Employee
    include EmailReportable
  end
end
