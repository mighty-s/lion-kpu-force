class CreateSeatStrutures < ActiveRecord::Migration[5.1]
  def change
    create_table :seat_strutures do |t|

      t.string :name
      t.belongs_to :branch

      t.timestamps
    end
  end
end
