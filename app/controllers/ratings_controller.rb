class RatingsController < ApplicationController
  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  # GET /ratings
  # GET /ratings.json
  def index
    @ratings = Rating.all
  end


    def my_hotel_rating
    @ratings = Rating.where(:rate_category => "hotel")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


def my_bus_rating
    @ratings = Rating.where(:rate_category => "bus")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_bank_rating
    @ratings = Rating.where(:rate_category => "bank")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

    def my_beauty_saloon_rating
    @ratings = Rating.where(:rate_category => "beauty_saloon")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_computer_rating
    @ratings = Rating.where(:rate_category => "computer")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_shopping_mall_rating
    @ratings = Rating.where(:rate_category => "shopping_mall")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_education_rating
    @ratings = Rating.where(:rate_category => "education")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_hospital_rating
    @ratings = Rating.where(:rate_category => "hospital")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_store_rating
    @ratings = Rating.where(:rate_category => "store")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_famous_place_rating
    @ratings = Rating.where(:rate_category => "famous_place")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


    def my_gas_station_rating
    @ratings = Rating.where(:rate_category => "gas_station")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_jewellery_rating
    @ratings = Rating.where(:rate_category => "jewellery")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_emergency_contact_rating
    @ratings = Rating.where(:rate_category => "emergency_contact")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


    def my_farmer_rating
    @ratings = Rating.where(:rate_category => "farmer")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_electronic_rating
    @ratings = Rating.where(:rate_category => "electronic")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end




  def my_tea_shop_rating
    @ratings = Rating.where(:rate_category => "tea_shop")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_cycle_rating
    @ratings = Rating.where(:rate_category => "cycle")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_restaurant_rating
    @ratings = Rating.where(:rate_category => "restaurant")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def to_give_rate

     @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => params[:rate_category])
     @rating.save

  end



  def rate_hotel_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Hotel")
        @rating.save
              
  end

  def rate_restaurant_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Restaurant")
        @rating.save
              
  end

  def rate_souvenir_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Souvenir")
        @rating.save
              
  end


   def rate_airline_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Airline")
        @rating.save
              
  end


  def rate_carline_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Carline")
        @rating.save
              
  end

  def rate_train_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Train")
        @rating.save
              
  end

  def rate_voyage_save

        @rating = Rating.new(:username => params[:username], :rate_number => params[:rate_number], :rate_name => params[:rate_name], :rate_category => "Voyage")
        @rating.save
              
  end





  # GET /ratings/1
  # GET /ratings/1.json
  def show
  end

  # GET /ratings/new
  def new
    @rating = Rating.new
  end

  # GET /ratings/1/edit
  def edit
  end

  # POST /ratings
  # POST /ratings.json
  def create
    @rating = Rating.new(rating_params)

    respond_to do |format|
      if @rating.save
        format.html { redirect_to @rating, notice: 'Rating was successfully created.' }
        format.json { render :show, status: :created, location: @rating }
      else
        format.html { render :new }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update
    respond_to do |format|
      if @rating.update(rating_params)
        format.html { redirect_to @rating, notice: 'Rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating }
      else
        format.html { render :edit }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating.destroy
    respond_to do |format|
      format.html { redirect_to ratings_url, notice: 'Rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:username, :rate_number, :rate_name, :rate_category)
    end
end
