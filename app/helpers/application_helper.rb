module ApplicationHelper
  def create_article_path
    if params[:invoice_id]
      invoice_articles_path(params[:invoice_id])
    else
      articles_path
    end
  end
end
