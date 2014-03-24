class Service < ActiveRecord::Base
  attr_accessible :description, :title
  has_and_belongs_to_many :companies
end
