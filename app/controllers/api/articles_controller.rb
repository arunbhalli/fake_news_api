class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all().most_recent
    if articles == []
      render json: { articles: articles }, status: 204
    else
      render json: articles, each_serializer: ArticlesIndexSerializer
    end
  end

  def show
    article = Article.find(params[:id])
    render json: { article: article}
  end

end
