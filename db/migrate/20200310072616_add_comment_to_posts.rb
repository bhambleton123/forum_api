class AddCommentToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :comment, null: false, foreign_key: true
  end
end
