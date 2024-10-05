class Employee
  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def higher_salary_than?(other_employee)
    salary > other_employee.salary
  end

  protected

  def salary
    @salary
  end
end

emp1 = Employee.new("John", 50000)
emp2 = Employee.new("Jane", 55000)

puts emp1.higher_salary_than?(emp2)  # => false
puts emp2.higher_salary_than?(emp1)  # => true
