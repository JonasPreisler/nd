class AddLogoToIcos < ActiveRecord::Migration[5.2]
  def change
    add_column :icos, :logo, :string
  end
end
