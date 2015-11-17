class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :hour
      t.datetime :date
      t.string :phone
      t.string :ip

      t.timestamps null: false
    end
  end
end
