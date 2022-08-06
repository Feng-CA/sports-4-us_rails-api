class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :date_time
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.integer :cost
      t.integer :quantity_limit

      t.timestamps
    end
  end
end
