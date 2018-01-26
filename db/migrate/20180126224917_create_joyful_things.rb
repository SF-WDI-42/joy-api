class CreateJoyfulThings < ActiveRecord::Migration[5.1]
  def change
    create_table :joyful_things do |t|
      t.text :name

      t.timestamps
    end
  end
end
