class CreateCelebrities < ActiveRecord::Migration[6.0]
  def change
    create_table :celebrities do |t|
      t.string :name, null: false
      t.integer :birth_year
      t.string :fame_type
      t.string :gender, null: false
      t.string :info

      t.timestamps
    end
  end
end
