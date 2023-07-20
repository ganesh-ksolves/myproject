class ArticlesController < ApplicationController

  def index  #this controller controls this file in the view app/views/articles/index.html.erb

    @articles = Article.all
  end
  def show 
    @article = Article.find(params[:id])
    @comments = @article.comments # Retrieve comments associated with the article
  end
  
  def new
    @article = Article.new
  end

  def create
    # @article = Article.new(article_params)

    @article = current_user.articles.build(article_params)

    if @article.save
      redirect_to @article, notice: 'Article created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  private
  def article_params
    params.require(:article).permit(:title,:body)
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :image, :status)
  end

  

end
