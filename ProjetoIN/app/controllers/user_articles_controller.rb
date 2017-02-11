class UserArticlesController < ApplicationController
  before_action :set_user_article, only: [:show, :edit, :update, :destroy]

  # GET /user_articles
  # GET /user_articles.json
  def index
    @user_articles = UserArticle.all
  end

  # GET /user_articles/1
  # GET /user_articles/1.json
  def show
  end

  # GET /user_articles/new
  def new
    @user_article = UserArticle.new
  end

  # GET /user_articles/1/edit
  def edit
  end

  # POST /user_articles
  # POST /user_articles.json
  def create
    @user_article = UserArticle.new(user_article_params)

    respond_to do |format|
      if @user_article.save
        format.html { redirect_to @user_article, notice: 'User article was successfully created.' }
        format.json { render :show, status: :created, location: @user_article }
      else
        format.html { render :new }
        format.json { render json: @user_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_articles/1
  # PATCH/PUT /user_articles/1.json
  def update
    respond_to do |format|
      if @user_article.update(user_article_params)
        format.html { redirect_to @user_article, notice: 'User article was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_article }
      else
        format.html { render :edit }
        format.json { render json: @user_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_articles/1
  # DELETE /user_articles/1.json
  def destroy
    @user_article.destroy
    respond_to do |format|
      format.html { redirect_to user_articles_url, notice: 'User article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_article
      @user_article = UserArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_article_params
      params.require(:user_article).permit(:user_id, :article_id)
    end
end
