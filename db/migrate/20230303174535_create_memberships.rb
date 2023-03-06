class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.references :gym, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.integer :charge

      t.timestamps
    end
  end
end
