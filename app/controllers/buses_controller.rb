class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, except: [:my_bus_gate]
  # GET /buses
  # GET /buses.json

    def my_bus_gate
    @busses = Bus.all
    @bank_ads = Advertisement.where(:category => "bus")
  
  
    respond_to do |format|
          my_primary_json = { 
              :Advertisement => @bank_ads.to_json(:methods => [:avatar_url1]),
            :Bus => @busses.to_json(:methods => [:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4,:avatar_url5])   }
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
    @buses = Bus.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /buses/1
  # GET /buses/1.json
  def show
  end

  # GET /buses/new
  def new
    @bus = Bus.new
  end

  # GET /buses/1/edit
  def edit
  end

  # POST /buses
  # POST /buses.json
  def create
    @bus = Bus.new(bus_params)

    respond_to do |format|
      if @bus.save
        format.html { redirect_to buses_path, notice: 'Bus was successfully created.' }
        format.json { render :show, status: :created, location: @bus }
      else
        format.html { render :new }
        format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buses/1
  # PATCH/PUT /buses/1.json
  def update
    respond_to do |format|
      if @bus.update(bus_params)
        format.html { redirect_to buses_path, notice: 'Bus was successfully updated.' }
        format.json { render :show, status: :ok, location: @bus }
      else
        format.html { render :edit }
        format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buses/1
  # DELETE /buses/1.json
  def destroy
    @bus.destroy
    respond_to do |format|
      format.html { redirect_to buses_url, notice: 'Bus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus
      @bus = Bus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_params
      params.require(:bus).permit(:option_phone1, :option_phone2,:description, :avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :name, :address, :phone, :website, :latitude, :longitude, :fromtownship, :totownship, :departuretime)
    end
end
