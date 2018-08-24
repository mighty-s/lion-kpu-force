class CreateOperators < ActiveRecord::Migration[5.1]
  def change
    create_table :operators do |t|
      t.string :email, unique: true
      t.string :password_digest
      t.string :phone
      t.string :status
      t.string :name

      t.timestamps
    end
  end
end
