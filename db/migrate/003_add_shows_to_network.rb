class AddShowsToNetwork < ActiveRecord::Migration[4.2]
  def change
      add_column :shows, :network_id, :integer
      add_column :shows, :genre, :string
  end
end
