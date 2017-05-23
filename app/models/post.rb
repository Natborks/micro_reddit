class Post < ApplicationRecord
	before_save {self.title = title.downcase}
	validates :title, presence: true, length: {maximum: 55}, 
				uniqueness: {case_sensitive: false}

	validates :content, presence: true, uniqueness: {case_sensitive:false}

	belongs_to :user
end
