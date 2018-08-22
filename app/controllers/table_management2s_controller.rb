class TableManagement2sController < ApplicationController
  def index
    @token = form_authenticity_token

  end

  def create
    hashids = Hashids.new("this is salt")
    hash = hashids.encode(params[:table_id])

    @table = SeatOnuse.create!(
        hash_code: hash,
        structures_id: params[:table_id],
        status: "on"
    )
    redirect_to '/'
  end

  def new
    @token = form_authenticity_token

  end
end