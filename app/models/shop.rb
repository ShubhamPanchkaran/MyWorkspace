class Shop < ActiveRecord::Base
attr_accessor :shopname, :address, :description, :image
validates :shopname, :address, :description, :image, presence: true
after_save :clear_data

 def clear_data
    self.shopname = nil
	self.address = nil
	self.description = nil
	self.image = nil
  end
end