# employee should have a name
# employee should have a salary
# employee should be able to get raises
require 'minitest/autorun'
require './employee'

class EmployeeTest < MiniTest::Unit::TestCase

  def setup
    @employee = Employee.new("Fred", "von Employee", 20_000)
  end

  def test_employee_has_name_and_salary
    assert @employee.name
    assert @employee.salary
  end

  def test_employee_raise_increases_salary
    old_salary = @employee.salary
    @employee.raise_salary!
    assert @employee.salary > old_salary
  end
end