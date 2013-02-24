class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
