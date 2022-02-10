class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :diet, null: false
      t.integer :calories, null: false

      t.timestamps
    end
  end
end
