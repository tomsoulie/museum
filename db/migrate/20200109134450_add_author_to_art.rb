class AddAuthorToArt < ActiveRecord::Migration[6.0]
  def change
    add_reference :works, :author, foreign_key: true
  end
end
