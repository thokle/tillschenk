class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :author
      t.string :title
      t.string :text
      t.string :link

      t.timestamps
    end
  end
end
