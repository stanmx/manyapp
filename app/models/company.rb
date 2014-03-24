class Company < ActiveRecord::Base
  attr_accessible :about, :category_id, :delegation_id, :name, :service_ids
  belongs_to :category
  belongs_to :delegation
  has_and_belongs_to_many :services
end
