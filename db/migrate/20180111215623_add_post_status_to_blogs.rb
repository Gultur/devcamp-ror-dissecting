class AddPostStatusToBlogs < ActiveRecord::Migration[5.1]
  def change
    #on ajoute default 0 pour le status
    add_column :blogs, :status, :integer, default: 0
  end
end
