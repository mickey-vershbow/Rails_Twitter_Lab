class TweetsController < ApplicationController

def index
    tweet = Tweet.all
    render json: {status: 200, tweets: tweet}
end

def show
    found_tweet = Tweet.find(params[:id])
    if found_tweet
        render(status: 200, json: {tweet: found_tweet})
    else
        render(status: 404, json: {tweet: found_tweet})
    end
end

def create
    tweet = Tweet.new(tweet_params)

    if tweet.save
        render(status: 200, json: {tweet: tweet})
    else
        render(status: 406, json: {tweet: tweet, errors: tweet.errors})
    end
end

def update
    updated_tweet = Tweet.find(params[:id])

    if updated_tweet
        updated_tweet.update(tweet_params)
        render(status: 200, json: { tweet: updated_tweet})
    else
        render(status: 406, json: {tweet: updated_tweet, errors: updated_tweet.errors})
    end
end

def destroy
end

private

def tweet_params
    params.require(:tweet).permit(:title, :content, :author)
end


end
