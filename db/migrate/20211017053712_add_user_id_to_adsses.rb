class AddUserIdToAdsses < ActiveRecord::Migration[6.1]
  def change
    add_column :adsses, :user_id, :integer
    add_index :adsses, :user_id
  end
end
