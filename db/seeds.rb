
# CREATE FAKE TWEETS (this worked)

# 10.times do
#     Tweet.create(
#         title: Faker::Hipster.sentence(word_count: 3),
#         content: Faker::Hipster.sentence,
#         author: Faker::Twitter.screen_name
#     )
# end


# Create fake reply data
4.times do
    Reply.create(
        title: Faker::Hipster.sentence(word_count: 5),
        content: Faker::Hipster.sentence,
        author: Faker::Twitter.screen_name,
        tweet_id: 34
    )
end
