class SidekiqSampleController < ApplicationController
  def index
  end

  def create
    GreetWorker.perform_in(30.seconds, "実行しました")
    render template: "sidekiq_sample/index"
  end
end
