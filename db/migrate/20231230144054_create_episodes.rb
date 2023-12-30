class CreateEpisodes < ActiveRecord::Migration[7.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :link
      t.integer :duration
      t.string :description
      t.integer :size
      t.string :guid
      t.datetime :published_at
      t.references :podcast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
