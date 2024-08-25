class CreateTableAddress < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false

      t.belongs_to :case, null: false
      t.timestamps
    end
  end
end
