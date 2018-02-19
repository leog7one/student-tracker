class CreateHomerooms < ActiveRecord::Migration[5.1]
  def change
    create_table :homerooms do |t|
      t.string :room_number

      t.timestamps
    end
  end
end
