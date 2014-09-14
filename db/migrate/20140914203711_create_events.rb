class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :title_slug
      t.datetime :published_date
      t.string :author

      t.timestamps
    end
  end
end
