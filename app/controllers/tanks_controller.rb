class TanksController < ApplicationController

   def create
    @genevarecord = GenevaRecord.find(params[:genevarecord_id])
    @genevarecord = tanks.create(tank_params)
  end

  private

  def tank_params
    params.require(:tank).permit(:open_gauge, :open_stock, :close_gauge, :close_stock, :tank_id)
  end

end
