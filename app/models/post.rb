class Post < ActiveRecord::Base
  belongs_to :restaurant, :autosave => true
  has_one :hashtag ,:autosave => true
  has_many :photos
  accepts_nested_attributes_for :hashtag, :restaurant, :photos
end
