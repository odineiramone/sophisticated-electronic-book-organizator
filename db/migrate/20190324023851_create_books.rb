class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :title, null: false
      t.integer :volume
      t.integer :isbn
      t.string :description

      t.timestamps null: false
    end
  end
end
