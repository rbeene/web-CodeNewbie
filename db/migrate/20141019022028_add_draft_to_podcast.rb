class AddDraftToPodcast < ActiveRecord::Migration
  def change
    add_column :podcasts, :draft, :boolean
  end
end
