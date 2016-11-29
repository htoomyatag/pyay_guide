class CarlinesController < ApplicationController
  before_action :set_carline, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, :except => [:my_carline]
  # GET /carlines
  # GET /carlines.json
  def index
    @carlines = Carline.group(:name)
  end

  def carline_route
    @carline_info = Carline.find(params[:id])
    @carline = Carline.new
  end


  def my_carline
    @carlines = Carline.all
    @cites = Carline.uniq.pluck(:from)
    @carline_info = Carline.group(:name)


    @ratings = Rating.where(:rate_category => "Carline")

    respond_to do |format|
          my_primary_json = 
          {:City => @cites.to_json( :only => [:from, :to]), 
           :CarlineDetail => @carline_info.to_json( :only => [:name,:address, :phone, :website, :email], :methods => [:avatar_url]), 
            :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category]),  
           :Carline => @carlines.to_json( :only => [:arrival_time,:departure_time,:days,:name,:address, :phone, :website, :email, :from, :to], :methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  # GET /carlines/1
  # GET /carlines/1.json
  def show
     @carline_routes = Carline.where(:name => @carline.name)
  end

  # GET /carlines/new
  def new
    @carline = Carline.new
  end

  # GET /carlines/1/edit
  def edit
  end

  # POST /carlines
  # POST /carlines.json
  def create
    @carline = Carline.new(carline_params)

    respond_to do |format|
      if @carline.save
        format.html { redirect_to @carline, notice: 'Carline was successfully created.' }
        format.json { render :show, status: :created, location: @carline }
      else
        format.html { render :new }
        format.json { render json: @carline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carlines/1
  # PATCH/PUT /carlines/1.json
  def update
    respond_to do |format|
      if @carline.update(carline_params)
        format.html { redirect_to @carline, notice: 'Carline was successfully updated.' }
        format.json { render :show, status: :ok, location: @carline }
      else
        format.html { render :edit }
        format.json { render json: @carline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carlines/1
  # DELETE /carlines/1.json
  def destroy
    @carline.destroy
    respond_to do |format|
      format.html { redirect_to carlines_url, notice: 'Carline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carline
      @carline = Carline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carline_params
      params.require(:carline).permit(:avatar,:name, :address,:phone,:website, :email,:arrival_time,:departure_time,:days, :from, :to )
    end
end
