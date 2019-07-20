class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name_merchant
      t.string :title_product
      t.string :subtitle_product
      t.date :exp_date
      t.string :desc_product
      t.string :redeem_point
      t.string :image_url

      t.timestamps
    end
  end
end
