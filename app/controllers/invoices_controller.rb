class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save!
      redirect_to invoices_path
    else
      render 'new'
    end
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def destroy
    invoice = Invoice.find(params[:id])
    invoice.destroy!
    redirect_to invoices_path
  end

  def print
    invoice = Invoice.find(params[:id])
    pdf_name = "#{invoice.client}-#{invoice.invoice_date}.pdf"
    total = 0

    Prawn::Document.generate(pdf_name) do
      text "#{invoice.client}"
      text "#{invoice.invoice_date}"
      invoice.articles.each do |article|
        text "---"
        text "#{article.name}"
        text "#{article.price}"
        total = total + article.price
      end
      text "---"
      text "total: #{total}€"


    end

    send_file("#{pdf_name}", type: 'text/pdf')

  end

  private
    def invoice_params
      params.require(:invoice).permit(:invoice_date, :client)
    end
end
