class TweetsController < ApplicationController

def index
    tweet = Tweet.all
    render json: {status: 200, tweets: tweet}
end

# def show
#     found_tweet = Tweet.find(params[:id])
#     if tweet
#         render(status: 200, json: {tweet: found_tweet})
#     else
#         render(status: 404, json: {tweet: found_tweet})
#     end
# end


end
