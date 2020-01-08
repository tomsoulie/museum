class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title
      t.string :author
      t.string :image
      t.string :description
      t.integer :date

      t.timestamps
    end
  end
end
