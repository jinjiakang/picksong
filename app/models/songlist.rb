class Songlist < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :band, presence: true
    validates :category, presence: true
    def self.import(file)
        CSV.foreach(file.path, headers: true,encoding:"Big5:utf-8") do |row|

            Songlist.create!(name: row["name"],key: row["key"],
            band: row["band"],url: row["url"],
            lyrics: row["lyrics"],category: row["category"],
            mark: row["mark"] ,
            user_id: 1)
            # Songlist.create! row.to_hash
        end
    end
end
