class CreateGuessLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :guess_logs do |t|
      t.inet :guesser_ip
      t.bigint :spouse1_id
      t.bigint :spouse_guess
      t.boolean :correct

      t.timestamps
    end
  end
end
