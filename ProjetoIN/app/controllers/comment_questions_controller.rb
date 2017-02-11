class CommentQuestionsController < ApplicationController
  before_action :set_comment_question, only: [:show, :edit, :update, :destroy]

  # GET /comment_questions
  # GET /comment_questions.json
  def index
    @comment_questions = CommentQuestion.all
  end

  # GET /comment_questions/1
  # GET /comment_questions/1.json
  def show
  end

  # GET /comment_questions/new
  def new
    @comment_question = CommentQuestion.new
  end

  # GET /comment_questions/1/edit
  def edit
  end

  # POST /comment_questions
  # POST /comment_questions.json
  def create
    @comment_question = CommentQuestion.new(comment_question_params)

    respond_to do |format|
      if @comment_question.save
        format.html { redirect_to @comment_question, notice: 'Comment question was successfully created.' }
        format.json { render :show, status: :created, location: @comment_question }
      else
        format.html { render :new }
        format.json { render json: @comment_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_questions/1
  # PATCH/PUT /comment_questions/1.json
  def update
    respond_to do |format|
      if @comment_question.update(comment_question_params)
        format.html { redirect_to @comment_question, notice: 'Comment question was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_question }
      else
        format.html { render :edit }
        format.json { render json: @comment_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_questions/1
  # DELETE /comment_questions/1.json
  def destroy
    @comment_question.destroy
    respond_to do |format|
      format.html { redirect_to comment_questions_url, notice: 'Comment question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_question
      @comment_question = CommentQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_question_params
      params.require(:comment_question).permit(:question_id, :comment_id)
    end
end
