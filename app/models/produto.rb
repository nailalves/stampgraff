class Produto < ActiveRecord::Base
	belongs_to :os
  attr_accessible :id, :name
end
