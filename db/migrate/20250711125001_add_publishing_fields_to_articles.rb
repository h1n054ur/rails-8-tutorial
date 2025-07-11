class AddPublishingFieldsToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :published, :boolean, default: false, null: false
    add_column :articles, :published_at, :datetime
  end
end
