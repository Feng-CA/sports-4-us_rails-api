class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.string :contact_no
      t.string :emergency_contact
      t.string :emergency_contact_no
      t.boolean :cycling
      t.boolean :golf
      t.boolean :tennis
      t.boolean :soccer
      t.boolean :hiking
      t.boolean :cricket
      t.boolean :running
      t.boolean :basketball
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
