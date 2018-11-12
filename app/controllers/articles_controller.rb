class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
				
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
		#render plain: params[:article].inspect
		@article = Article.new(articles_params)
		@article.save
		redirect_to @article
	end

private

	def articles_params
		params.require(:article).permit(:title, :text)
	end

end
