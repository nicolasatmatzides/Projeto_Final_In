class PagesController < ApplicationController
    
    def home
        @articles = Article.order('created_at DESC').page params[:page]
    end
    
    def forum
        @questions = Question.order('created_at DESC').page params[:page] 
    end
end
