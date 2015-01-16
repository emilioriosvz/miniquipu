class Invoice < ActiveRecord::Base
  has_and_belong_to_many :articles
end