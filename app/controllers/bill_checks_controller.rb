class BillChecksController < ApplicationController
  def index
    @token = form_authenticity_token
    @t_id = SeatStruture.where(branch_id: params[:br_id])


  end

  def new
  end

  def create
  end

  def show
    @num = params[:table_id]
    @num2 = SeatOnuse.where(structures_id: @num)
    @num3 = SeatStruture.where(id: @num)
    @br_id = Branch.where(id: @num3)
    @bill = Order.where(seat_onuse_id: @num2)
    @table = Order.select('orders.* , menus.name ,COUNT(orders.menu_id) as menu_count, SUM(orders.amount) as menu_total_price').joins(:menu).group(:menu_id).where(seat_onuse_id: @bill)#.count(:menu_id)


  end

  def update
  end

  def edit
  end
end