class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries, id: false  do |t|
      t.uuid :id, primary_key: true
      t.uuid :lottery_id
      t.string :numbers

      t.timestamps null: false
    end
  end
end
