class StickeyAdvertisementsController < ApplicationController
  before_action :set_stickey_advertisement, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, except: [:my_stickey_advertisement]
  # GET /stickey_advertisements
  # GET /stickey_advertisements.json

  def my_stickey_advertisement
    @bank_ads = StickeyAdvertisement.all
  
  
    respond_to do |format|
          my_primary_json = { 
              :Advertisement => @bank_ads.to_json(:methods => [:avatar_url1])
               }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end



  def index
    @stickey_advertisements = StickeyAdvertisement.all
  end

  # GET /stickey_advertisements/1
  # GET /stickey_advertisements/1.json
  def show
  end

  # GET /stickey_advertisements/new
  def new
    @stickey_advertisement = StickeyAdvertisement.new
  end

  # GET /stickey_advertisements/1/edit
  def edit
  end

  # POST /stickey_advertisements
  # POST /stickey_advertisements.json
  def create
    @stickey_advertisement = StickeyAdvertisement.new(stickey_advertisement_params)

    respond_to do |format|
      if @stickey_advertisement.save
        format.html { redirect_to stickey_advertisements_path, notice: 'Stickey advertisement was successfully created.' }
        format.json { render :show, status: :created, location: @stickey_advertisement }
      else
        format.html { render :new }
        format.json { render json: @stickey_advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stickey_advertisements/1
  # PATCH/PUT /stickey_advertisements/1.json
  def update
    respond_to do |format|
      if @stickey_advertisement.update(stickey_advertisement_params)
        format.html { redirect_to stickey_advertisements_path, notice: 'Stickey advertisement was successfully updated.' }
        format.json { render :show, status: :ok, location: @stickey_advertisement }
      else
        format.html { render :edit }
        format.json { render json: @stickey_advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stickey_advertisements/1
  # DELETE /stickey_advertisements/1.json
  def destroy
    @stickey_advertisement.destroy
    respond_to do |format|
      format.html { redirect_to stickey_advertisements_url, notice: 'Stickey advertisement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stickey_advertisement
      @stickey_advertisement = StickeyAdvertisement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stickey_advertisement_params
      params.require(:stickey_advertisement).permit(:avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :category)
    end
end
