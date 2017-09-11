class ExpensesController < ApplicationController
  def index
    #params[:concept]
    #params[:category_id]
    @expenses = Expense.with_concept(params[:concept]).with_category_id(params[:category_id])
  end
end
