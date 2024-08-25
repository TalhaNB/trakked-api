class CreateCasesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.string :case_number, null: false, default: ""
      t.integer :status, null: false, default: 0
      t.string :status_text, null: false, default: ""
      t.string :description, default: ""

      t.integer :client_id, null: false
      t.integer :solicitor_id, null: false
      t.timestamps
    end
  end
end
