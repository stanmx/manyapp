class Company < ActiveRecord::Base
  attr_accessible :about, :category_id, :delegation_id, :name
  belongs_to :category
  belongs_to :delegation
end
