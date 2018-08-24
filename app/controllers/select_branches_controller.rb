class SelectBranchesController < ApplicationController
  def index
    @op = Operator.find(session[:operator_id])
    @br = Branch.where(operator: session[:operator_id])
  end

  def new
  end

  def create
  end

  def show

  end
end