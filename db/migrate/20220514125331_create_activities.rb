class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :routine, null: false, foreign_key: { to_table: :routines }
      t.string :name,              null: false, default: ""
      t.text :description,         null: false, default: ""
      t.string :icon,              null: false, default: ""
      t.integer :status,              null: false, default: ""
      t.timestamps
    end
  end
end
