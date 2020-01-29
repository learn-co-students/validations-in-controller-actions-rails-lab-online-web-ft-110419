class Post < ActiveRecord::Base
	validates :title, presence: true
	validates_inclusion_of :category, in: ["fiction", "Fiction", "Nonfiction", "Non-Fiction", "non-fiction", "nonfiction"]
	validates :content, length: {minimum: 100}
end
