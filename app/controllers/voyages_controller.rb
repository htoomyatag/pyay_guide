class VoyagesController < ApplicationController
  before_action :set_voyage, only: [:show, :edit, :update, :destroy]

  # GET /voyages
  # GET /voyages.json
  def index
    @voyages = Voyage.group(:name)
  end

  def voyage_route
    @voyage_info = Voyage.find(params[:id])
    @voyage = Voyage.new
  end



  def my_voyage
    @voyages = Voyage.all
    @cites = Voyage.uniq.pluck(:from)
    @ratings = Rating.where(:rate_category => "Voyage")
      # ActiveRecord::Base.include_root_in_json = true

    respond_to do |format|
          my_primary_json = { 
            :City => @cites.to_json( :only => [:from, :to]), 
            :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category]),  
            :Voyage => @voyages.to_json( :only => [:arrival_time,:departure_time,:remark,:name, :address,:phone,:website, :email, :from, :to], :methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').html_safe 
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]") 

   
       
          format.json {render json: my_fourth_json}
          format.text {render text: my_fourth_json}
   
    end
  end

  # GET /voyages/1
  # GET /voyages/1.json
  def show
    @voyage_routes = Voyage.where(:name => @voyage.name)
  end

  # GET /voyages/new
  def new
    @voyage = Voyage.new
  end

  # GET /voyages/1/edit
  def edit
  end

  # POST /voyages
  # POST /voyages.json
  def create
    @voyage = Voyage.new(voyage_params)

    respond_to do |format|
      if @voyage.save
        format.html { redirect_to @voyage, notice: 'Voyage was successfully created.' }
        format.json { render :show, status: :created, location: @voyage }
      else
        format.html { render :new }
        format.json { render json: @voyage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voyages/1
  # PATCH/PUT /voyages/1.json
  def update
    respond_to do |format|
      if @voyage.update(voyage_params)
        format.html { redirect_to @voyage, notice: 'Voyage was successfully updated.' }
        format.json { render :show, status: :ok, location: @voyage }
      else
        format.html { render :edit }
        format.json { render json: @voyage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voyages/1
  # DELETE /voyages/1.json
  def destroy
    @voyage.destroy
    respond_to do |format|
      format.html { redirect_to voyages_url, notice: 'Voyage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voyage
      @voyage = Voyage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voyage_params
      params.require(:voyage).permit(:avatar,:days,:arrival_time,:departure_time,:remark,:name, :address,:phone,:website, :email, :from, :to)
    end
end
