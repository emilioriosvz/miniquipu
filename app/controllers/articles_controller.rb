class ArticlesController < ApplicationController
  def index
    @articles = Article.expenses
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    invoice = Invoice.find_by(id: params[:invoice_id])

    if article.save!
      unless invoice.nil?
        invoice.articles.push(article)
        invoice.save!
        redirect_to new_invoice_article_path(invoice)
      else
        redirect_to articles_path
      end
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy!
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:name, :price)
    end
end

