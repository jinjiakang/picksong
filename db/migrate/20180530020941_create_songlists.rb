class CreateSonglists < ActiveRecord::Migration[5.2]
  def change
    create_table :songlists do |t|
      t.string :name
      t.string :key
      t.string :band
      t.string :url
      t.text :lyrics
      t.string :category
      t.boolean :mark
      t.references :user

      t.timestamps
    end
  end
end
