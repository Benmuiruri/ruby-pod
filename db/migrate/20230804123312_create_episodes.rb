class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.date :release_date
      t.string :spotify_url
      t.references :podcast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
