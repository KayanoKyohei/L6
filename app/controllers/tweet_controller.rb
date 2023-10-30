class TweetController < ApplicationController
    # app/controllers/tweet_controller.rb
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path, notice: 'ツイートが投稿されました'
    else
      render 'new'
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path, notice: 'ツイートが削除されました'
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end

