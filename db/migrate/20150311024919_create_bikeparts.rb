class CreateBikeparts < ActiveRecord::Migration
  def change
    create_table :bikeparts do |t|
      t.string :product_name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
