class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :invoice_date
      t.string :client
    end
  end
end
