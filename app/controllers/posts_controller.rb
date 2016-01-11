class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_filter :form_components
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
    @post.build_hashtag
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: '投稿は正常に保存されました。' }
        format.json { render :show, status: :created, location: @post }
        logger.debug(@post)
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: '変更は正常に保存されました。' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: '投稿は正常に削除されました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
      @restaurant = @post.restaurant
    end

    def form_components
      # to make restaurant information hash
      restaKey = Restaurant.all.pluck(:name)
      restaValue = Restaurant.all.pluck(:id)
      resta_ary = [restaKey,restaValue].transpose
      @restaurants = Hash[*resta_ary.flatten]
      @price_zone = {"¥0 ~ ¥999" => 500, "¥1000 ~ ¥1999" => 1500, "¥2000 ~ ¥2999" => 2500, "¥3000 ~ ¥3999" => 3500, "¥4000 ~ ¥4999" => 4500}
      @evaluation = [1,2,3,4,5]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:titile, :user_id, :restaurant_id, :content, :time_zone, :amount, :total_eval, :quality_eval, :service_eval, :atomos_eval, :drink_eval, :partner_eval, :visit_date, :url,
        hashtag_attributes: [:post_id, :couple, :firstdate, :onesidelove, :confession, :lunch, :cafe, :dinner, :aniversary, :oneyear_ani, :onemonth_ani, :xmas, :valentine, :whiteday],
        photos_attributes: [:post_id, :file_name])
    end
end
