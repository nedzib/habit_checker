class HomeAttempt::Component < ViewComponent::Base
  def initialize(attempts:)
    super
    @attempts = attempts
  end
end