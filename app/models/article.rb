class Article < ActiveRecord::Base
  has_and_belong_to_many :invoice
end