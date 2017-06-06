class GenevarecordsController < ApplicationController

  def index
    @genevarecords = GenevaRecord.all.page(params[:page]).per(5)
  end

  def new
    @genevarecords = GenevaRecord.new
  end

end
