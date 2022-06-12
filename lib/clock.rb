require 'clockwork'
require 'active_support/time' # Allow numeric durations (eg: 1.minutes)
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job|
    puts "Running #{job} at #{time}"
  end

  begin
    configure do |config|
      config[:sleep_timeout] = 5
      config[:max_threads] = 4
      config[:thread] = true
    end

    every(10.seconds, 'Put a message', tz: 'America/Bogota', thread: true) do
      p "Mensaje enviado desde clock"
    end

  rescue StandardError => e
    p e
  end
end
