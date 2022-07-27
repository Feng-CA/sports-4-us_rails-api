class CreateInboxSenders < ActiveRecord::Migration[6.1]
  def change
    create_table :inbox_senders do |t|
      t.references :inbox, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
