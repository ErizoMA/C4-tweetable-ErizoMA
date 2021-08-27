class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    # @tweet = authorize Company.new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(body: params[:body])
    @tweet.user = User.first

    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end
end
