class AirlinesController < ApplicationController
  before_action :set_airline, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, :except => [:my_airline]
  # GET /airlines
  # GET /airlines.json
  def index
    @airlines = Airline.group(:name)
  end

  def airline_route
    @airline_info = Airline.find(params[:id])
    @airline = Airline.new
  end







  def my_airline
    @airlines = Airline.all
    @cites = Airline.uniq.pluck(:from)
    @airline_info =Airline.group(:name)

    @ratings = Rating.where(:rate_category => "Airline")



    respond_to do |format|
          my_primary_json = 
          {:City => @cites.to_json( :only => [:from, :to]), 
           :AirlineDetail => @airline_info.to_json( :only => [:name,:address, :phone, :website, :email], :methods => [:avatar_url]), 
           :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category]),  
           :Airline => @airlines.to_json( :only => [:arrival_time,:departure_time,:days,:flight_number,:name,:address, :phone, :website, :email, :from, :to], :methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  # GET /airlines/1
  # GET /airlines/1.json
  def show
    @airline_routes = Airline.where(:name => @airline.name)
  end

  # GET /airlines/new
  def new

    @airline = Airline.new
  

  end

  # GET /airlines/1/edit
  def edit
  end

  # POST /airlines
  # POST /airlines.json
  def create
    @airline = Airline.new(airline_params)

    respond_to do |format|
      if @airline.save
        format.html { redirect_to @airline, notice: 'Airline was successfully created.' }
        format.json { render :show, status: :created, location: @airline }
      else
        format.html { render :new }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airlines/1
  # PATCH/PUT /airlines/1.json
  def update
    respond_to do |format|
      if @airline.update(airline_params)
        format.html { redirect_to @airline, notice: 'Airline was successfully updated.' }
        format.json { render :show, status: :ok, location: @airline }
      else
        format.html { render :edit }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airlines/1
  # DELETE /airlines/1.json
  def destroy
    @airline.destroy
    respond_to do |format|
      format.html { redirect_to airlines_url, notice: 'Airline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airline
      @airline = Airline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airline_params
      params.require(:airline).permit(:avatar, :arrival_time,:departure_time,:days,:flight_number,:name,:address, :phone, :website, :email, :from, :to)
    end
end
