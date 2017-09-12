class ExpensesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    #params[:concept]
    #params[:category_id]
    @expenses = Expense.with_concept(params[:concept]).with_category_id(params[:category_id]).with_user(current_user)
  end
end
