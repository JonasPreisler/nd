class AddCommentToIco < ActiveRecord::Migration[5.2]
  def change
    add_column :icos, :comment, :string
  end
end
