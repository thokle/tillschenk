class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.title :string
      t.text :string
      t.imageurl :string

      t.timestamps
    end
  end
end
