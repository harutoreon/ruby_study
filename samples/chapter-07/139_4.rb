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

class Manager < Employee
  def initialize(name, salary, bonus)
    super(name, salary)
    @bonus = bonus
  end

  def total_compensation
    salary + @bonus
  end
end

manager = Manager.new("Alice", 70000, 10000)
puts manager.total_compensation  # => 80000
