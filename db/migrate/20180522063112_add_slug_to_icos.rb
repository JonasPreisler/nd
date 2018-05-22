class AddSlugToIcos < ActiveRecord::Migration[5.2]
  def change
    add_column :icos, :slug, :string, unique: true
  end
end
