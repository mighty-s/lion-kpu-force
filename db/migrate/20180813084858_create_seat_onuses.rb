class CreateSeatOnuses < ActiveRecord::Migration[5.1]
  def change
    create_table :seat_onuses do |t|

      t.string :hash_code
      t.belongs_to :structures
      t.string :status
      t.timestamps
    end
  end
end
