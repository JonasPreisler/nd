class AddTaglineToIcos < ActiveRecord::Migration[5.2]
  def change
    add_column :icos, :tagline, :string
  end
end
