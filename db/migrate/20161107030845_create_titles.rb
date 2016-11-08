class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.integer :site_id
      t.string :content
      t.string :tag
      t.string :html

      t.timestamps
    end
  end
end
