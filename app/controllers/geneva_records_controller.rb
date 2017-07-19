class GenevaRecordsController < ApplicationController

  

  def index
    @genevarecords = GenevaRecord.all.page(params[:page]).per(5)
  end

  def new
    @genevarecord = GenevaRecord.new(
      GV_01_open_stock: GenevaRecord.last.try(:GV_01_close_stock),
      GV_01_open_gauge: GenevaRecord.last.try(:GV_01_close_gauge),
      GV_02_open_stock: GenevaRecord.last.try(:GV_02_close_stock), 
      GV_02_open_gauge: GenevaRecord.last.try(:GV_02_close_gauge),
      GV_03_open_stock: GenevaRecord.last.try(:GV_03_close_stock), 
      GV_03_open_gauge: GenevaRecord.last.try(:GV_03_close_gauge),
      tact1_open: GenevaRecord.last.try(:tact1_close),
      tact2_open: GenevaRecord.last.try(:tact2_close),
      tact3_open: GenevaRecord.last.try(:tact3_close),
      tact4_open: GenevaRecord.last.try(:tact4_close),
      tact5_open: GenevaRecord.last.try(:tact5_close),
      stateline1_open: GenevaRecord.last.try(:stateline1_close),
      stateline2_open: GenevaRecord.last.try(:stateline2_close),
      plains1_open: GenevaRecord.last.try(:plains1_close),
      plains2_open: GenevaRecord.last.try(:plains2_close),
      waffleiron_open: GenevaRecord.last.try(:waffleiron_close),
      comments: GenevaRecord.last.try(:comments)
      )
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
  end


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
       :GV_03_close_stock,
       :tact1_open,
       :tact1_close,
       :tact2_open,
       :tact2_close,
       :tact3_open,
       :tact3_close,
       :tact4_open,
       :tact4_close,
       :tact5_open,
       :tact5_close,
       :stateline1_open,
       :stateline1_close,
       :stateline2_open,
       :stateline2_close,
       :plains1_open,
       :plains1_close,
       :plains2_open,
       :plains2_close,
       :waffleiron_open,
       :waffleiron_close,
       :comments
       )
   end

end



