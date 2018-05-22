class CreateIcos < ActiveRecord::Migration[5.2]
  def change
    create_table :icos do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.date :launchdate
      t.string :country
      t.string :website
      t.decimal :goal

      t.timestamps
    end
  end
end
