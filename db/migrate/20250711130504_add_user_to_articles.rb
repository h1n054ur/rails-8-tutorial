class AddUserToArticles < ActiveRecord::Migration[8.0]
  def change
    add_reference :articles, :user, null: true, foreign_key: true
    
    # Assign existing articles to the admin user
    reversible do |dir|
      dir.up do
        admin_user = User.find_by(admin: true)
        if admin_user
          Article.where(user_id: nil).update_all(user_id: admin_user.id)
        end
      end
    end
    
    # Make user_id required after assigning existing articles
    change_column_null :articles, :user_id, false
  end
end
