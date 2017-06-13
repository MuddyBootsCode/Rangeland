class MetersController < ApplicationController

  def create
    @genevarecord = GenevaRecord.find(params[:genevarecord_id])
    @genevarecord = meters.create(meter_params)
  end

  private

  def meter_params
    params.require(:meter).permit(:open_reading, :close_reading, :meter_name)
  end
end
