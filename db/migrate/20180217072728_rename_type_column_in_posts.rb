class RenameTypeColumnInPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :type, :content_type
  end
end
