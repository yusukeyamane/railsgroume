class Hashtag < ActiveRecord::Base
  belongs_to :post, foreign_key: "post_id"
  accepts_nested_attributes_for :post
end
