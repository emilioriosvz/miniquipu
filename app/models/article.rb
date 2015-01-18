class Article < ActiveRecord::Base
  belongs_to :invoice
  scope :expenses, -> {where(invoice_id: nil)}
  scope :income, -> {where.not(invoice_id: nil)}
end