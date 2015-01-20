class DashboardsController < ApplicationController
  def index
    dashboard = Dashboard.new
    @expenses = dashboard.expenses
    @invoices = dashboard.income
    @state = @invoices - @expenses
    @movements = dashboard.total_movements
  end
end
