class Post < ActiveRecord::Base
  belongs_to :restaurant, :autosave => true
  has_one :hashtag ,:autosave => true, dependent: :destroy
  has_many :photos
  accepts_nested_attributes_for :hashtag, :restaurant, :photos
  def hashtag
  	Hashtag.new
  end
end
