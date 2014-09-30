class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :source,   null: false
      t.boolean :watched, default: false

      t.timestamps
    end
  end
end
