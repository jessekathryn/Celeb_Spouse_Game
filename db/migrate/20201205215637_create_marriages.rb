class CreateMarriages < ActiveRecord::Migration[6.0]
  def change
    create_table :marriages do |t|
      t.string :husband, null: false
      t.string :wife, null: false
      t.string :start_year
      t.string :end_year

      t.timestamps
    end
  end
end
