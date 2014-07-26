class RestaurantsController < ApplicationController
  before_action :require_user, except: [:show, :index]
  before_action :require_creator, only: [:edit, :update]

  def index
    @restaurants = Restaurant.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
  end


  def new
    @restaurant = Restaurant.new
  end


  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    
    @restaurant.save
    redirect_to @restaurant
  end


  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address, :phone_number, :photo, :remote_photo_url, category_ids: [])
    end

end
