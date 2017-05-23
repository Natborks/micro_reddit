class User < ApplicationRecord
	before_save {self.name = name.downcase}
	validates :name, presence: true, length:{ maximum:50}, uniqueness: {case_sensitive: false}

	has_many :posts, dependent: :destroy
end
