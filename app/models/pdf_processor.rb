class PdfProcessor
  attr_reader :invoice

  def initialize(invoice)
    @invoice = invoice
  end

  def generate
    #pasar la lógica del controlador
  end

  def filename
    @filename ||= "#{@invoice.client}-#{@invoice.invoice_date}.pdf"
  end

end