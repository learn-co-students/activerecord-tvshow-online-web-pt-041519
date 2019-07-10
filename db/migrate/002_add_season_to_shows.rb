class AddSeasonToShows < ActiveRecord::Migration[5.2]

  # Write migration to db
  def change
    add_column :shows, :season, :string
	end

end