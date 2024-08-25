class AddIndexOnCases < ActiveRecord::Migration[7.0]
  def change
    add_index :cases, :case_number, unique: true
  end
end
