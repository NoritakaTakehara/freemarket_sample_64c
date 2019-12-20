class ItemsController < ApplicationController

  layout "items"

  before_action :set_item, only: [:show, :edit]

  def index
    @items = Item.all
  end

  def show
    @items = Item.all
    # @images = @item.images.all
  end

  def new
    render :layout  => "application"
  end

  def credit
  end
  
  def create
  end

  def mypage

  end

  def edit
    render :layout  => "application"
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to item_path(item.id)
    else
      redirect_to edit_item_path(item.id)
    end
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :detail, :category_id, :state, :delivery_fee, :prefecture_id, :delivery_date, :price, :fee, :gross_profit, :user_id, :size, :image)
  end
  
  def set_item
    @item = Item.find(params[:id]) 
  end


end