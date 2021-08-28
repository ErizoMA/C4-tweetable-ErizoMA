class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(body: params[:body])
    @tweet.user = User.second

    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path
  end

  def edit; end

  def update
    if @tweet.update(tweet_params)
      redirect_to tweets_path
    else
      render :edit
    end
  end
end
