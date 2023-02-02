class HomePostsController < ApplicationController
  before_action :set_home_post, only: %i[ show edit update destroy ]

  # GET /home_posts or /home_posts.json
  def index
    @home_posts = HomePost.all
  end

  # GET /home_posts/1 or /home_posts/1.json
  def show
  end

  # GET /home_posts/new
  def new
    @home_post = HomePost.new
  end

  # GET /home_posts/1/edit
  def edit
  end

  # POST /home_posts or /home_posts.json
  def create
    @home_post = HomePost.new(home_post_params)

    respond_to do |format|
      if @home_post.save
        format.html { redirect_to home_post_url(@home_post), notice: "Home post was successfully created." }
        format.json { render :show, status: :created, location: @home_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_posts/1 or /home_posts/1.json
  def update
    respond_to do |format|
      if @home_post.update(home_post_params)
        format.html { redirect_to home_post_url(@home_post), notice: "Home post was successfully updated." }
        format.json { render :show, status: :ok, location: @home_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_posts/1 or /home_posts/1.json
  def destroy
    @home_post.destroy

    respond_to do |format|
      format.html { redirect_to home_posts_url, notice: "Home post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_post
      @home_post = HomePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_post_params
      params.require(:home_post).permit(:title, :description, images: [])
    end
end
