class BatchesController < ApplicationController
  before_action :authenticate_user!
  def index
    @batches = Batch.all.order_by_number
  end

  def show

    @batch = Batch.find(params[:id])

  end

  def new
    @batch =Batch.new
  end



 def create
   @batch = Batch.new(batch_params)
   if @batch.save
   redirect_to batches_path, notice: 'Batch added'
   else
   render :new
 end

 end

 private
 def batch_params
     params.require(:batch).permit(:code, :starts_at, :ends_at)
 end


end
