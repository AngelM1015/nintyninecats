class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :description
      t.string :gender
      t.integer :size
      t.string :color
      t.date :birth_date

      t.timestamps
    end
  end
end
