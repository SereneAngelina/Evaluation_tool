class BatchesController < ApplicationController
  before_action :authenticate_user!
  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])
  end



 def create
   @batch = Batch.new(batch_params)
   @batch.save
   redirect_to batches_path

 end

 private
 def batch_params
     params.require(:batch).permit(:code, :starts_at, :ends_at)
 end


end
