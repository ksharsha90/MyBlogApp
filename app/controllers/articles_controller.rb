class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
				
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(articles_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def create
		#render plain: params[:article].inspect
		@article = Article.new(articles_params)
		@article.save
		redirect_to @article
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

private

	def articles_params
		params.require(:article).permit(:title, :text)
	end

end
