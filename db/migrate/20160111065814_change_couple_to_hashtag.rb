class ChangeCoupleToHashtag < ActiveRecord::Migration
  def change
		change_column :hashtags, :couple, :integer
		change_column :hashtags, :firstdate, :integer
		change_column :hashtags, :onesidelove, :integer
		change_column :hashtags, :confession, :integer
		change_column :hashtags, :lunch, :integer
		change_column :hashtags, :cafe, :integer
		change_column :hashtags, :dinner, :integer
		change_column :hashtags, :aniversary, :integer
		change_column :hashtags, :oneyear_ani, :integer
		change_column :hashtags, :onemonth_ani, :integer
		change_column :hashtags, :xmas, :integer
		change_column :hashtags, :valentine, :integer
		change_column :hashtags, :whiteday, :integer
  end
end
