class Delegation < ActiveRecord::Base
  attr_accessible :city, :description, :title
  has_many :companies
end
