class CreateMarriages < ActiveRecord::Migration[6.0]
  def change
    create_table :marriages do |t|
      t.string :husband
      t.string :wife
      t.string :start_year
      t.string :end_year

      t.timestamps
    end
  end
end
