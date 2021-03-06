class TravelPostsController < ApplicationController
  before_action :set_travel_post, only: [:show, :edit, :update, :destroy]

  # GET /travel_posts
  # GET /travel_posts.json
  def index
    @travel_posts = TravelPost.all
  end

  def my_travelnews
    @travel_posts = TravelPost.all

    respond_to do |format|
          my_primary_json = { :News => @travel_posts.to_json( :only => [:title, :content, :writer])   }
          my_seconday_json = my_primary_json.to_json.gsub('\\', '').gsub("u0026","&").gsub("rnrn","")
          a = '"['
          b = ']"'
          my_third_json = my_seconday_json.gsub(a , "[")
          my_fourth_json = my_third_json.gsub(b , "]")
          format.json {render json: my_primary_json}
          format.text {render text: my_fourth_json}
    end
  end


  # GET /travel_posts/1
  # GET /travel_posts/1.json
  def show
  end

  # GET /travel_posts/new
  def new
    @travel_post = TravelPost.new
  end

  # GET /travel_posts/1/edit
  def edit
  end

  # POST /travel_posts
  # POST /travel_posts.json
  def create
    @travel_post = TravelPost.new(travel_post_params)

    respond_to do |format|
      if @travel_post.save
        format.html { redirect_to @travel_post, notice: 'Travel post was successfully created.' }
        format.json { render :show, status: :created, location: @travel_post }
      else
        format.html { render :new }
        format.json { render json: @travel_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_posts/1
  # PATCH/PUT /travel_posts/1.json
  def update
    respond_to do |format|
      if @travel_post.update(travel_post_params)
        format.html { redirect_to @travel_post, notice: 'Travel post was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_post }
      else
        format.html { render :edit }
        format.json { render json: @travel_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_posts/1
  # DELETE /travel_posts/1.json
  def destroy
    @travel_post.destroy
    respond_to do |format|
      format.html { redirect_to travel_posts_url, notice: 'Travel post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_post
      @travel_post = TravelPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_post_params
      params.require(:travel_post).permit(:title, :content, :writer)
    end
end
