class ItemsController < ApplicationController
  def index
    @items = Item.all
    
    respond_to do |format|
      format.html {}
    end
  end

  def new
    @item = Item.new
    
    respond_to do |format|
      format.html {}
    end
  end
  
  def create
    item = Item.new(params[:item])
    
    respond_to do |format|
      if item.save
        flash[:notice] = "You can now #{item.title} for a #{item.points.to_i < 0 ? 'cost' : 'gain'} of #{item.points.gsub("-", "")} points per #{item.time_increment} minutes of time spent"
        format.html { redirect_to items_path }
      else
        flash[:error] = "We could not add that item"
        @item = item
        format.html { render :template => "items/new" }
      end
    end
  end

  def edit
  end

end
