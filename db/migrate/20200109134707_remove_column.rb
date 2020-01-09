class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
  	remove_column :works, :author
  end
end
