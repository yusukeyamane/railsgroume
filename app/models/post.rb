class Post < ActiveRecord::Base
  belongs_to :restaurant, :autosave => true
  has_one :hashtag #:autosave => true
  accepts_nested_attributes_for :hashtag
end
