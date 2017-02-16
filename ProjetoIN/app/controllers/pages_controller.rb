class PagesController < ApplicationController
    
    def home
        @questions = Question.order('created_at DESC').limit(5)
        if params[:search]
            @articles = Article.search(params[:search]).order("created_at DESC").page params[:page]
            @questions2 = Question.search(params[:search]).order("created_at DESC").page params[:page]
        else
            @articles = Article.all.order("created_at DESC").page params[:page]
        end
    end
    
    def forum
        @questions = Question.order('created_at DESC').page params[:page] 
    end
end
