# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#     Tweet.create(
#         title: Faker::Hipster.sentence(word_count: 3),
#         content: Faker::Hipster.sentence,
#         author: Faker::Twitter.screen_name
#     )
# end

4.times do
    Reply.create(
        title: Faker::Hipster.sentence(word_count: 5),
        content: Faker::Hipster.sentence,
        author: Faker::Twitter.screen_name
        tweet_id: 34
    )
end

# p Reply.create(title: "great post man", content: "love this", author: "whoever", tweet_id: 34)
# p Reply.create(title: "great post man 1", content: "love this", author: "whoever", tweet_id: 34)
# p Reply.create(title: "great post man 2", content: "love this", author: "whoever", tweet_id: 34)
