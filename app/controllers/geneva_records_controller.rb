class GenevaRecordsController < ApplicationController

  def index
    @genevarecords = GenevaRecord.all.page(params[:page]).per(5)
  end

  def new
    @genevarecord = GenevaRecord.new
  end

end
