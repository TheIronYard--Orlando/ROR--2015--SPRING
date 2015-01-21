class Employee

  attr_reader :first_name, :last_name, :salary

  def initialize(first_name, last_name, salary)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
  end

  def name
    "#{first_name} #{last_name}"
  end

  def raise_salary!
    @salary = @salary * 1.05
  end
end