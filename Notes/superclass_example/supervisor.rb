require './employee'
class Supervisor < Employee
# Supervisor _inherits from_ Employee
# Employee is the _superclass_ of Supervisor
  def raise_salary!
    @salary = @salary * 1.10
  end

  def reviews(employee)
    employee.raise_salary!
  end
end