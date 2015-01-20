class Dashboard
  def initialize
    @expenses ||= Article.expenses
    @incomes ||= Article.income
  end
  def expenses
    @amount = 0
    @expenses.each do |expense|
      @amount += expense.price
    end
    @amount
  end
  def income
    @amount = 0
    @incomes.each do |income|
      @amount += income.price
    end
    @amount
  end

  def total_movements
    @total = 0
    @total += @expenses.count
    @total += Invoice.all.count
  end
end