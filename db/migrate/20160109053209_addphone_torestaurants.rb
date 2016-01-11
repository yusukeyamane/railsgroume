class AddphoneTorestaurants < ActiveRecord::Migration
  def change
		add_column :restaurants, :phone, :integer
  end
end
