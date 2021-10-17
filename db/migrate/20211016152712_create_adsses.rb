class CreateAdsses < ActiveRecord::Migration[6.1]
  def change
    create_table :adsses do |t|
      t.string :company_name
      t.string :advertisement
      t.string :location
      t.string :phone_no
      t.string :description
      t.timestamps
    end
  end
end
