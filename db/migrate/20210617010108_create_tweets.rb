class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
	    t.string   "title"
	    t.text     "content"
	    t.string   "author"
    end
  end
end
