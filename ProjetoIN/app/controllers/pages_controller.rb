class PagesController < ApplicationController
    def home
        @questions = Question.all
        @articles = Article.order('created_at DESC').page params[:page]

    end
end
