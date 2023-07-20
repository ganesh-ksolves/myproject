class ArticlesWithLastCommentsController < ApplicationController
  def index
    @articles_with_last_comments = Article.includes(:comments).map do |article|
      {
        article: article,
        last_comments: article.comments.order(created_at: :desc).limit(5)
      }
    end
  end
end
