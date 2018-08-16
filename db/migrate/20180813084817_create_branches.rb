class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|

      t.string :name
      t.belongs_to :user

      t.timestamps
    end
  end
end
