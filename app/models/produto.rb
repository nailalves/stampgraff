class Produto < ActiveRecord::Base
	has_many :ordems
  attr_accessible :name
end
