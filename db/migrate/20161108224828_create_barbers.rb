class CreateBarbers < ActiveRecord::Migration
  def change
    create_table :barbers do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
