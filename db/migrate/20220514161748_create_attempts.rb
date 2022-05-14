class CreateAttempts < ActiveRecord::Migration[7.0]
  def change
    create_table :attempts do |t|
      t.references :activity, null: false, foreign_key: { to_table: :activities }
      t.integer :result,         null: false, default: ""
      t.timestamps
    end
  end
end
