class InvoicesController < ApplicationController
  def index
<<<<<<< HEAD
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
    @invoice = Invoice.find(params[:id])
    @invoice.destroy!
    redirect_to invoices_path
  end

  private
    def invoice_params
      params.require(:invoice).permit(:invoice_date, :client)
    end

=======
  end
>>>>>>> cfb1231e04abc8ca899c7fb8b26a8998a54d5e82
end
