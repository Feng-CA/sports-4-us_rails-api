class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.string :contact_no
      t.string :emergency_contact
      t.string :emergency_contact_no
      t.references :interest, null: false, foreign_key: true
      t.integer :account

      t.timestamps
    end
  end
end
