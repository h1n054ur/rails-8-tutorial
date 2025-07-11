class ArticlesController < ApplicationController
  # Public blog interface - read-only for published articles
  
  def index
    @articles = Article.published_recent
  end

  def show
    @article = Article.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to articles_path, alert: 'Article not found.'
  end
end
