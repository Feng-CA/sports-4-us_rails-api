class CreateInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests do |t|
      t.boolean :cycling
      t.boolean :golf
      t.boolean :tennis
      t.boolean :soccer
      t.boolean :hiking
      t.boolean :cricket
      t.boolean :running
      t.boolean :basketball

      t.timestamps
    end
  end
end
