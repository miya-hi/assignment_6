class Post < ApplicationRecord
  validates :content, presence: true, length: { minumun:1, maximum: 140 }
end
