class TableManagementsController < ApplicationController
  def create

    i = 0

    while i < params[:table_number].to_i

      @seatstruct = SeatStruture.create(
          status: "off",
          branch_id: params[:br_id]
      )
      i+=1

    end
    redirect_to table_management2s_path, method: :post
  end

  def new
    @token = form_authenticity_token
  end

  def index

    @t_id = SeatStruture.where(branch_id: params[:br_id])
    @token = form_authenticity_token


  end

  def show
  end

  def edit
  end

  def delete
  end
end