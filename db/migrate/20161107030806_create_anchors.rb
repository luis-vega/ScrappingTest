class CreateAnchors < ActiveRecord::Migration[5.0]
  def change
    create_table :anchors do |t|
      t.integer :site_id
      t.string :content
      t.string :href
      t.string :html
      t.timestamps
    end
  end
end
