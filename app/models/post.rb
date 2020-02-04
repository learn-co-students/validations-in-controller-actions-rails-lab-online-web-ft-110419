class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} This is neither a Fiction or Non-Fiction category"}
    validates :content, length: { minimum: 100}
end
