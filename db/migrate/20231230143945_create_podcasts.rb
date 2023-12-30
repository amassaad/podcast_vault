class CreatePodcasts < ActiveRecord::Migration[7.1]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :link
      t.string :description
      t.string :subtitle
      t.string :author
      t.string :image

      t.timestamps
    end
  end
end
