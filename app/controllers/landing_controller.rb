class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def article_comment
    #binding.pry
    article = Article.find(params[:article])
    article.comments.create(comment: params[:comment])
    redirect_to root_path
  end
end
