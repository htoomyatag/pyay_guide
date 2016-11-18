class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, except: [:my_hotel]
  # GET /hotels
  # GET /hotels.json



  def my_hotel
    @hotels = Hotel.all
    @bank_ads = Advertisement.where(:category => "hotel")
  
    respond_to do |format|
          my_primary_json = { 
            :Advertisement => @bank_ads.to_json(:methods => [:avatar_url1]),
            :Hotel => @hotels.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '')
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def index
    @hotels = Hotel.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to hotels_path, notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to hotels_path, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to hotels_url, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:option_phone1, :option_phone2,:description, :avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :name, :address, :phone, :website, :latitude, :longitude, :hoteltype)
    end
end
