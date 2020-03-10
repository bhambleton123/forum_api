class RemoveCommentFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :posts, :comment, null: false, foreign_key: true
  end
end
