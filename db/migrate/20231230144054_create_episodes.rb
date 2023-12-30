class CreateEpisodes < ActiveRecord::Migration[7.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :link
      t.integer :duration
      t.bigint :podcast_id
      t.string :description
      t.integer :size
      t.datetime :published_at

      t.timestamps
    end
  end
end
