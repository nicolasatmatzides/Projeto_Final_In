class CommentArticlesController < ApplicationController
  before_action :set_comment_article, only: [:show, :edit, :update, :destroy]

  # GET /comment_articles
  # GET /comment_articles.json
  def index
    @comment_articles = CommentArticle.all
  end

  # GET /comment_articles/1
  # GET /comment_articles/1.json
  def show
  end

  # GET /comment_articles/new
  def new
    @comment_article = CommentArticle.new
  end

  # GET /comment_articles/1/edit
  def edit
  end

  # POST /comment_articles
  # POST /comment_articles.json
  def create
    @comment_article = CommentArticle.new(comment_article_params)

    respond_to do |format|
      if @comment_article.save
        format.html { redirect_to @comment_article, notice: 'Comment article was successfully created.' }
        format.json { render :show, status: :created, location: @comment_article }
      else
        format.html { render :new }
        format.json { render json: @comment_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_articles/1
  # PATCH/PUT /comment_articles/1.json
  def update
    respond_to do |format|
      if @comment_article.update(comment_article_params)
        format.html { redirect_to @comment_article, notice: 'Comment article was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_article }
      else
        format.html { render :edit }
        format.json { render json: @comment_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_articles/1
  # DELETE /comment_articles/1.json
  def destroy
    @comment_article.destroy
    respond_to do |format|
      format.html { redirect_to comment_articles_url, notice: 'Comment article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_article
      @comment_article = CommentArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_article_params
      params.require(:comment_article).permit(:article_id, :comment_id)
    end
end
