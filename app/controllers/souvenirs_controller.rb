class SouvenirsController < ApplicationController
  before_action :set_souvenir, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, :except => [:my_souvenir]
  # GET /souvenirs
  # GET /souvenirs.json
  def index
    @souvenirs = Souvenir.paginate(:page => params[:page], :per_page => 30)
  end


  def my_souvenir
    @souvenirs = Souvenir.all
    @ratings = Rating.where(:rate_category => "Souvenir")


    respond_to do |format|
          my_primary_json = { :Rating => @ratings.to_json( :only => [:username, :rate_number, :rate_name, :rate_category]), :Souvenir => @souvenirs.to_json( :only => [:region, :township, :name, :address, :phone, :website, :email, :category], :methods => [:avatar_url])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  # GET /souvenirs/1
  # GET /souvenirs/1.json
  def show
  end

  # GET /souvenirs/new
  def new
    @souvenir = Souvenir.new

    @city = City.all()
    @city_list=[]
    @city.each do |c|
    @city_list << [c.title,c.title]
    end
  end

  # GET /souvenirs/1/edit
  def edit
  end

  # POST /souvenirs
  # POST /souvenirs.json
  def create
    @souvenir = Souvenir.new(souvenir_params)

    respond_to do |format|
      if @souvenir.save
        format.html { redirect_to @souvenir, notice: 'Souvenir was successfully created.' }
        format.json { render :show, status: :created, location: @souvenir }
      else
        format.html { render :new }
        format.json { render json: @souvenir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /souvenirs/1
  # PATCH/PUT /souvenirs/1.json
  def update
    respond_to do |format|
      if @souvenir.update(souvenir_params)
        format.html { redirect_to @souvenir, notice: 'Souvenir was successfully updated.' }
        format.json { render :show, status: :ok, location: @souvenir }
      else
        format.html { render :edit }
        format.json { render json: @souvenir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /souvenirs/1
  # DELETE /souvenirs/1.json
  def destroy
    @souvenir.destroy
    respond_to do |format|
      format.html { redirect_to souvenirs_url, notice: 'Souvenir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_souvenir
      @souvenir = Souvenir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def souvenir_params
      params.require(:souvenir).permit(:avatar,:region, :township, :name, :address, :phone, :website, :email, :category)
    end
end
