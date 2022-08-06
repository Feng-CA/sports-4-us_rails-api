class CreateChannelMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :channel_messages do |t|
      t.text :message
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
