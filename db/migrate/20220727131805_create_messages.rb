class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :message, null: false
      t.references :sender_user, null: false
      t.references :receiver_user, null: false

      t.timestamps
    end
    add_foreign_key :messages, :users, column: :sender_user_id
    add_foreign_key :messages, :users, column: :receiver_user_id
  end
end
