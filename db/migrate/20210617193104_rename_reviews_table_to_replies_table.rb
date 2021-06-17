class RenameReviewsTableToRepliesTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :reviews, :replies
  end
end
