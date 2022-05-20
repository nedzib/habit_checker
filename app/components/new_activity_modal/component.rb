class NewActivityModal::Component < ViewComponent::Base
  def initialize
    super
    @activity = Activity.new
  end
end