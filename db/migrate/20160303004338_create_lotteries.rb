class CreateLotteries < ActiveRecord::Migration
  def change
    create_table :lotteries, id: false  do |t|
      t.uuid :id, primary_key: true
      t.string :name
      t.string :state
      t.string :winning_number
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
