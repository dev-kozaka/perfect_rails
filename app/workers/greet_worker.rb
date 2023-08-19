class GreetWorker < ApplicationController
  include Sidekiq::Worker
  sidekiq_options queue: :test, retry: 5

  def perform(string)
    p "#{string}"
  end
end