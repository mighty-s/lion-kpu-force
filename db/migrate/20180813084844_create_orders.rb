class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|

      t.belongs_to :seat_on_use
      t.belongs_to :menu
      t.integer :amount

      t.timestamps
    end
  end
end
