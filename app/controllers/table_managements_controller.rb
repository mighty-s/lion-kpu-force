class TableManagementsController < ApplicationController
  def create

    @token = form_authenticity_token
    i = 0

    while i < params[:table_number].to_i

      @seatstruct = SeatStruture.create(
          status: "off",
          branch_id: params[:br_id]
      )
      i+=1

    end

    redirect_to new_table_management_path + '/' + params[:br_id]
  end

  def new
    @token = form_authenticity_token
    @t_id = SeatStruture.where(branch_id: params[:br_id])


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