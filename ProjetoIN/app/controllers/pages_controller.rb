class PagesController < ApplicationController
    def home
        @articles = Article.all
        @questions = Question.all
    end
end
