class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, :except => [:my_restaurant]
  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.paginate(:page => params[:page], :per_page => 30)
  end


  def my_restaurant
    @restaurants = Restaurant.all
    @ratings = Rating.where(:rate_category => "Restaurant")


    respond_to do |format|
          my_primary_json = {  :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category]),:Restaurant => @restaurants.to_json( :only => [:region, :township, :name, :address, :phone, :website, :email, :category], :methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new

    @city = City.all()
    @city_list=[]
    @city.each do |c|
    @city_list << [c.title,c.title]
    end
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:avatar,:region, :township, :name, :address, :phone, :website, :email, :category)
    end
end
