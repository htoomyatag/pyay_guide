class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, only: [:show, :edit, :update, :destroy]
  # GET /advertisements
  # GET /advertisements.json






    def my_main_ads
    @advertisements = Advertisement.where(:main_ads => "yes")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

    def my_buses_ads
    @advertisements = Advertisement.where(:category => "buses")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_bank_ads
    @advertisements = Advertisement.where(:category => "bank")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_beauty_saloon_ads
    @advertisements = Advertisement.where(:category => "beauty_saloon")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_computer_ads
    @advertisements = Advertisement.where(:category => "computer")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_shopping_mall_ads
    @advertisements = Advertisement.where(:category => "shopping_mall")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_education_ads
    @advertisements = Advertisement.where(:category => "education")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_hospital_ads
    @advertisements = Advertisement.where(:category => "hospital")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_store_ads
    @advertisements = Advertisement.where(:category => "store")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_famous_place_ads
    @advertisements = Advertisement.where(:category => "famous_place")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_gas_station_ads
    @advertisements = Advertisement.where(:category => "gas_station")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_emergency_contact_ads
    @advertisements = Advertisement.where(:category => "emergency_contact")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_jewellery_ads
    @advertisements = Advertisement.where(:category => "jewellery")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_farmer_ads
    @advertisements = Advertisement.where(:category => "farmer")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_electronic_ads
    @advertisements = Advertisement.where(:category => "electronic")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def my_tea_shop_ads
    @advertisements = Advertisement.where(:category => "tea_shop")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_cycle_ads
    @advertisements = Advertisement.where(:category => "cycle")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_restaurant_ads
    @advertisements = Advertisement.where(:category => "restaurant")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_hotel_ads
    @advertisements = Advertisement.where(:category => "hotel")
  
    respond_to do |format|
          my_primary_json = { :Advertisement => @advertisements.to_json(:methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end




  def index
    @advertisements = Advertisement.all
  end

  # GET /advertisements/1
  # GET /advertisements/1.json
  def show
  end

  # GET /advertisements/new
  def new
    @advertisement = Advertisement.new
    @shop_names = SimpleTable.distinct.pluck(:name)

  end

  # GET /advertisements/1/edit
  def edit
  end

  # POST /advertisements
  # POST /advertisements.json
  def create
    @advertisement = Advertisement.new(advertisement_params)

    respond_to do |format|
      if @advertisement.save
        format.html { redirect_to advertisements_path, notice: 'Advertisement was successfully created.' }
        format.json { render :show, status: :created, location: @advertisement }
      else
        format.html { render :new }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advertisements/1
  # PATCH/PUT /advertisements/1.json
  def update
    respond_to do |format|
      if @advertisement.update(advertisement_params)
        format.html { redirect_to advertisements_path, notice: 'Advertisement was successfully updated.' }
        format.json { render :show, status: :ok, location: @advertisement }
      else
        format.html { render :edit }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisements/1
  # DELETE /advertisements/1.json
  def destroy
    @advertisement.destroy
    respond_to do |format|
      format.html { redirect_to advertisements_url, notice: 'Advertisement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advertisement_params
      params.require(:advertisement).permit(:main_ads, :avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :category, :shop_id, :category)
    end
end
