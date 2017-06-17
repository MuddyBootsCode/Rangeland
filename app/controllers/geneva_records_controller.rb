class GenevaRecordsController < ApplicationController


  def index
    @genevarecords = GenevaRecord.all.page(params[:page]).per(5)
  end

  def new
    @genevarecord = GenevaRecord.new(
      GV_01_open_stock: GenevaRecord.last.GV_01_close_stock, 
      GV_01_open_gauge: GenevaRecord.last.GV_01_close_gauge,
      GV_02_open_stock: GenevaRecord.last.GV_02_close_stock, 
      GV_02_open_gauge: GenevaRecord.last.GV_02_close_gauge,
      GV_03_open_stock: GenevaRecord.last.GV_03_close_stock, 
      GV_03_open_gauge: GenevaRecord.last.GV_03_close_gauge)
  end

  def create
    GenevaRecord.create(record_params)
    redirect_to root_path
  end

  def show
    @genevarecord = GenevaRecord.find(params[:id])
  end

  def edit
    @genevarecord = GenevaRecord.find(params[:id])
  end

  def update
    @genevarecord = GenevaRecord.find(params[:id])
    @genevarecord.update_attributes(record_params)
    redirect_to root_path
  end

  def destroy
    @genevarecord = GenevaRecord.find(params[:id])
    @genevarecord.destroy
    redirect_to root_path


  private

  def record_params

     params.require(:geneva_record).permit(
       :GV_01_open_gauge,
       :GV_01_open_stock,
       :GV_01_close_gauge,
       :GV_01_close_stock,
       :GV_02_open_gauge,
       :GV_02_open_stock,
       :GV_02_close_gauge,
       :GV_02_close_stock,
       :GV_03_open_gauge,
       :GV_03_open_stock,
       :GV_03_close_gauge,
       :GV_03_close_stock
       )
   end

end



