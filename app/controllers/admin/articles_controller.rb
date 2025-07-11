class Admin::ArticlesController < ApplicationController
  include ActionView::Helpers::TextHelper
  
  before_action :authenticate_user!
  before_action :ensure_admin
  before_action :set_article, only: [:show, :edit, :update, :destroy, :publish, :unpublish, :preview]

  def index
    @articles = Article.recent.includes(:user)
    @published_articles = @articles.published
    @draft_articles = @articles.draft
  end

  def show
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      if @article.published?
        flash[:success] = "Article '#{@article.title}' was successfully created and published!"
      else
        flash[:success] = "Article '#{@article.title}' was successfully created as a draft."
      end
      redirect_to admin_article_path(@article)
    else
      error_count = @article.errors.count
      flash.now[:error] = "Unable to create article. #{pluralize(error_count, 'error')} must be fixed."
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      if @article.published?
        flash[:success] = "Article '#{@article.title}' was successfully updated and is published."
      else
        flash[:success] = "Article '#{@article.title}' was successfully updated and saved as draft."
      end
      redirect_to admin_article_path(@article)
    else
      error_count = @article.errors.count
      flash.now[:error] = "Unable to update article. #{pluralize(error_count, 'error')} must be fixed."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    article_title = @article.title
    @article.destroy
    flash[:success] = "Article '#{article_title}' was successfully deleted."
    redirect_to admin_articles_path
  end

  def publish
    begin
      @article.publish!
      flash[:success] = "Article '#{@article.title}' was successfully published and is now live on the blog."
    rescue ActiveRecord::RecordInvalid => e
      flash[:error] = "Unable to publish article: #{e.message}"
    end
    redirect_to admin_articles_path
  end

  def unpublish
    begin
      @article.unpublish!
      flash[:success] = "Article '#{@article.title}' was successfully unpublished and is now a draft."
    rescue ActiveRecord::RecordInvalid => e
      flash[:error] = "Unable to unpublish article: #{e.message}"
    end
    redirect_to admin_articles_path
  end
  
  def preview
    render layout: 'public_preview'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Article not found."
    redirect_to admin_articles_path
  end

  def article_params
    params.require(:article).permit(:title, :content, :published)
  end

  def ensure_admin
    redirect_to root_path, alert: 'Access denied. Admin privileges required.' unless current_user&.admin?
  end
end