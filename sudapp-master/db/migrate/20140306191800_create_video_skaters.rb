class CreateVideoSkaters < ActiveRecord::Migration
  def change
    create_table :video_skaters do |t|
      t.string :video_skater_title
      t.string :video_skater_url
      t.belongs_to :skater, index: true

      t.timestamps
    end
  end
end
