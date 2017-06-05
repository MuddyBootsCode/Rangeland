class GenevaRecordsController < ApplicationController

  def index
    @genevarecords = GenevaRecord.all.page(params[:page]).per(5)
  end

end
