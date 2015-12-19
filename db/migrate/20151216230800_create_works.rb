class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :image_url

      t.timestamps
    end
  end
end
