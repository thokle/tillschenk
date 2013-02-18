class CreateAboutTills < ActiveRecord::Migration
  def change
    create_table :about_tills do |t|
      t.text :about
     

      t.timestamps
    end
  end
end
