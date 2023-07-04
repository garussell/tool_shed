class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.references :shed, null: false, foreign_key: true
      t.integer :quantity
      t.string :tool_name
      t.text :description
      t.boolean :available

      t.timestamps
    end
  end
end
