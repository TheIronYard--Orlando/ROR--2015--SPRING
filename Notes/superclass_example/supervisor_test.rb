# supervisor has a first_name, last_name, and salary
# supervisor can get a raise
# supervisor can give a performance review to an employee
#   a good performance review leads to a raise for the employee

require 'minitest/autorun'
require './supervisor'

class SupervisorTest < MiniTest::Unit::TestCase

  def setup
    @supervisor = Supervisor.new('Top', 'Person', 30_000)
  end

  def test_supervisor_gets_10_percent_raise
    old_salary = @supervisor.salary
    @supervisor.raise_salary!
    assert_equal @supervisor.salary, old_salary * 1.10
  end

  def employee
    @employee ||= Employee.new('Lowly', 'Underling', 10_000)
  end

  def test_supervisor_can_give_performance_review_to_employee
    assert @supervisor.reviews(employee)
  end

  def test_reviewing_employee_gives_5_percent_raise_to_employee
    employee_salary = employee.salary
    @supervisor.reviews(employee)
    assert_equal employee_salary * 1.05, employee.salary
  end
end  