class SimpleTablesController < ApplicationController
  before_action :set_simple_table, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!,  only: [:show, :edit, :update, :destroy]
  # GET /simple_tables
  # GET /simple_tables.json

  def api_informations

  end

  def my_simple_tables
    @simple_tables = SimpleTable.all
  
    respond_to do |format|
          my_primary_json = { :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_bank
    @simple_tables = SimpleTable.where(:category_id => "bank").order('id DESC')
    @bank_ads = Advertisement.where(:category => "bank")
  
    respond_to do |format|
          my_primary_json = { 
            :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]").gsub('rn','')
          format.json {render json: my_fourth_json}
          format.text {render text: my_fourth_json}
    end
  end


  def my_beauty_saloon
    @simple_tables = SimpleTable.where(:category_id => "beauty_saloon").order('id DESC')
    @bank_ads = Advertisement.where(:category => "beauty_saloon")
  
    respond_to do |format|
          my_primary_json = { 
            :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_computer
    @simple_tables = SimpleTable.where(:category_id => "computer").order('id DESC')
    @bank_ads = Advertisement.where(:category => "computer")
  
    respond_to do |format|

          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_shopping_mall
    @simple_tables = SimpleTable.where(:category_id => "shopping_mall").order('id DESC')
        @bank_ads = Advertisement.where(:category => "shopping_mall")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_education
    @simple_tables = SimpleTable.where(:category_id => "education").order('id DESC')
            @bank_ads = Advertisement.where(:category => "education")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_hospital
    @simple_tables = SimpleTable.where(:category_id => "hospital").order('id DESC')
         @bank_ads = Advertisement.where(:category => "hospital")
  
    respond_to do |format|
          my_primary_json = {
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
           :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_store
    @simple_tables = SimpleTable.where(:category_id => "store").order('id DESC')
      @bank_ads = Advertisement.where(:category => "store")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_famous_place
    @simple_tables = SimpleTable.where(:category_id => "famous_place").order('id DESC')
          @bank_ads = Advertisement.where(:category => "famous_place")
  
    respond_to do |format|
          my_primary_json = {
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
           :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]").gsub('rn','').gsub('tt-t','').gsub('t-t','')
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_gas_station
    @simple_tables = SimpleTable.where(:category_id => "gas_station").order('id DESC')
        @bank_ads = Advertisement.where(:category => "gas_station")
  
    respond_to do |format|
          my_primary_json = {
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
           :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_jewellery
    @simple_tables = SimpleTable.where(:category_id => "jewellery").order('id DESC')
      @bank_ads = Advertisement.where(:category => "jewellery")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_emergency_contact
    @simple_tables = SimpleTable.where(:category_id => "emergency_contact").order('id DESC')
          @bank_ads = Advertisement.where(:category => "emergency_contact")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_farmer
    @simple_tables = SimpleTable.where(:category_id => "farmer").order('id DESC')
              @bank_ads = Advertisement.where(:category => "farmer")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_electronic
    @simple_tables = SimpleTable.where(:category_id => "electronic").order('id DESC')
                  @bank_ads = Advertisement.where(:category => "electronic")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_tea_shop
    @simple_tables = SimpleTable.where(:category_id => "tea_shop").order('id DESC')
    @bank_ads = Advertisement.where(:category => "tea_shop")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_cycle
    @simple_tables = SimpleTable.where(:category_id => "cycle").order('id DESC')
        @bank_ads = Advertisement.where(:category => "cycle")
  
    respond_to do |format|
          my_primary_json = { 
               :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end

  def my_restaurant
    @simple_tables = SimpleTable.where(:category_id => "restaurant").order('id DESC')
   @bank_ads = Advertisement.where(:category => "restaurant")
  
    respond_to do |format|
          my_primary_json = { 
              :Advertisement => @bank_ads.to_json(:methods => [:avatar_url]),
            :SimpleTable => @simple_tables.to_json(:methods => [:avatar_url5,:avatar_url1,:avatar_url2,:avatar_url3,:avatar_url4])   }
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
    @simple_tables = SimpleTable.all
  end


  def informations
     @simple_tables = SimpleTable.where(:category_id => params[:category]).paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  # GET /simple_tables/1
  # GET /simple_tables/1.json
  def show
  end

  # GET /simple_tables/new
  def new
    @simple_table = SimpleTable.new
  end

  # GET /simple_tables/1/edit
  def edit
  end

  # POST /simple_tables
  # POST /simple_tables.json
  def create
    @simple_table = SimpleTable.new(simple_table_params)

    respond_to do |format|
      if @simple_table.save
        format.html { redirect_to informations_path(:category => @simple_table.category_id), notice: 'Simple table was successfully created.' }
        format.json { render :show, status: :created, location: @simple_table }
      else
        format.html { render :new }
        format.json { render json: @simple_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_tables/1
  # PATCH/PUT /simple_tables/1.json
  def update
    respond_to do |format|
      if @simple_table.update(simple_table_params)
        format.html { redirect_to informations_path(:category => @simple_table.category_id), notice: 'Simple table was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_table }
      else
        format.html { render :edit }
        format.json { render json: @simple_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_tables/1
  # DELETE /simple_tables/1.json
  def destroy
    @simple_table.destroy
    respond_to do |format|
      format.html { redirect_to informations_path(:category => @simple_table.category_id), notice: 'Simple table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_table
      @simple_table = SimpleTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_table_params
      params.require(:simple_table).permit(:option_phone1, :option_phone2, :description, :avatar1, :avatar2, :avatar3, :avatar4, :avatar5, :name, :address, :phone, :website, :latitude, :longitude, :category_id, :computer_category)
    end
end
