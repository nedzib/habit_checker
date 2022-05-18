class CheckReflex < ApplicationReflex
  def attempt_checked
    attempt = Attempt.find(element.dataset.attempt)
    attempt_result = attempt.result
    attempt.success! if attempt_result == Attempt.results.invert[0]
    attempt.in_process! if attempt_result == Attempt.results.invert[2]
  end
end

