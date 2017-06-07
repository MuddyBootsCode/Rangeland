class GenevaRecordsController < ApplicationController

  def index
    @genevarecords = GenevaRecord.all.page(params[:page]).per(5)
  end

  def new
    @genevarecord = GenevaRecord.new
  end

  def create
    GenevaRecord.create(record_params)
    redirect_to root_path
  end

  private

  def record_params

    params.require(:geneva_record).permit(
      :GV_01_open_gauge,
      :GV_01_open_stock,
      :GV_01_close_gauge,
      :GV_01_close_stock,
      :GV_01_stock_change
      )


  end
   
end
