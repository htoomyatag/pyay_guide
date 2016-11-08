class TrainsController < ApplicationController
  before_action :set_train, only: [:show, :edit, :update, :destroy]

  # GET /trains
  # GET /trains.json
  def index
    @trains = Train.all
  end

  def train_route
    @train_info = Train.find(params[:id])
    @train = Train.new
  end



  def my_train
    @trains = Train.all
    @cites = Train.uniq.pluck(:from)
     @ratings = Rating.where(:rate_category => "Train")

      # ActiveRecord::Base.include_root_in_json = true

    respond_to do |format|
          my_primary_json = { 
            :City => @cites.to_json( :only => [:from, :to]),
            :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category]),   
            :Train => @trains.to_json( :only => [:arrival_time,:departure_time,:remark,:name, :address,:phone,:website, :email, :from, :to], :methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').html_safe 
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]") 

   
       
          format.json {render json: my_fourth_json}
          format.text {render text: my_fourth_json}
   
    end
  end

  # GET /trains/1
  # GET /trains/1.json
  def show
      @train_routes = Train.where(:name => @train.name)
  end

  # GET /trains/new
  def new
    @train = Train.new
  end

  # GET /trains/1/edit
  def edit
  end

  # POST /trains
  # POST /trains.json
  def create
    @train = Train.new(train_params)

    respond_to do |format|
      if @train.save
        format.html { redirect_to @train, notice: 'Train was successfully created.' }
        format.json { render :show, status: :created, location: @train }
      else
        format.html { render :new }
        format.json { render json: @train.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trains/1
  # PATCH/PUT /trains/1.json
  def update
    respond_to do |format|
      if @train.update(train_params)
        format.html { redirect_to @train, notice: 'Train was successfully updated.' }
        format.json { render :show, status: :ok, location: @train }
      else
        format.html { render :edit }
        format.json { render json: @train.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trains/1
  # DELETE /trains/1.json
  def destroy
    @train.destroy
    respond_to do |format|
      format.html { redirect_to trains_url, notice: 'Train was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train
      @train = Train.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_params
      params.require(:train).permit(:avatar,:arrival_time,:departure_time,:remark,:name, :address,:phone,:website, :email, :from, :to)
    end
end
