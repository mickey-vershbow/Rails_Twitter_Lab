
# CREATE FAKE TWEETS (this worked)

# 10.times do
#     Tweet.create(
#         title: Faker::Hipster.sentence(word_count: 3),
#         content: Faker::Hipster.sentence,
#         author: Faker::Twitter.screen_name
#     )
# end


# The above code for generating faker Tweet data WORKED, as you can see if you query Tweet.all in the database
4.times do
    Reply.create(
        title: Faker::Hipster.sentence(word_count: 5),
        content: Faker::Hipster.sentence,
        author: Faker::Twitter.screen_name
        tweet_id: 34
    )
end

# ALTERNATE ATTEMPT ALSO FAILED

# p Reply.create(title: "great post man", content: "love this", author: "whoever", tweet_id: 34)
# p Reply.create(title: "great post man 1", content: "love this", author: "whoever", tweet_id: 34)
# p Reply.create(title: "great post man 2", content: "love this", author: "whoever", tweet_id: 34)
