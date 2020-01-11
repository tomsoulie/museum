class CreateSmooths < ActiveRecord::Migration[6.0]
  def change
    create_table :smooths do |t|
      t.string :name

      t.timestamps
    end
  end
end
