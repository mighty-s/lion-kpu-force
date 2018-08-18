class TableManagementsController < ApplicationController
  def index

  end

  def create
    @table = SeatStruture.new
    @table.branch = params[:@token.id]
    @table.save

    redirect_to '/table_managements/new'

  #   seatstruct에 branch 외래키를 심고,
  end

  def new
    @useTable = SeatOnuse.new
    @useTable.hash_code = params[:hash_code]
    @useTable.status = params[:table_status] # 해당 테이블 접속 세션값으로 받아와야할듯?

  end


  def show


  end

  def destroy

  end

  def edit

  end

end
