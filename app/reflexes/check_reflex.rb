class CheckReflex < ApplicationReflex
  def attempt_checked
    attempt_id = element.dataset.attempt
    attempt = Attempt.find(attempt_id)
    attempt_result = Attempt.find(attempt_id).result
    attempt.success! if attempt_result == Attempt.results.invert[0]
    attempt.in_process! if attempt_result == Attempt.results.invert[2]
  end
end

