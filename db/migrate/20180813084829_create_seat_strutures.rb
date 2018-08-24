class CreateSeatStrutures < ActiveRecord::Migration[5.1]
  def change
    create_table :seat_strutures do |t|

      t.string :status
      t.belongs_to :branch

      t.timestamps
    end
  end
end
