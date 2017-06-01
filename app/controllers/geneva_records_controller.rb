class GenevaRecordsController < ApplicationController

  def index
    @genevarecords = GenevaRecord.all
  end

end
