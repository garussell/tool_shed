class CreateSheds < ActiveRecord::Migration[7.0]
  def change
    create_table :sheds do |t|
      t.string :name
      t.string :city
      t.string :color
      t.boolean :space_available

      t.timestamps
    end
  end
end
