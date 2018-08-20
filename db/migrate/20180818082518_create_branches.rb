class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|

      t.string :universe
      t.string :major
      t.belongs_to :operator

      t.timestamps
    end
  end
end
