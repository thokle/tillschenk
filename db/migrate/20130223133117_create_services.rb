class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string  :text
      t.string  :imageurl

      t.timestamps
    end
  end
end
