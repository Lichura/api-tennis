class TennisCourt < ApplicationRecord
	has_many :cordinates, dependent: :destroy
end
