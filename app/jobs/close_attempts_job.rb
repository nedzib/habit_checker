class CloseAttemptsJob < ApplicationJob
  queue_as :closingJob

  def perform
    begin
      Attempt.where(created_at: ..Time.now, result: :in_process).each do |attempt|
        attempt.failed!
      end
    rescue StandardError => e
      p e
    end
  end

end