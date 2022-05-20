
class CablereadyTestReflex < ApplicationReflex

  def attempt_checked
    cable_ready.notification(
      title: "You are the best.",
      options: {
        body: "How does it feel to be your parents' favourite?",
        icon: "https://source.unsplash.com/256x256",
        vibrate: [200, 200, 200],
        silent: false
      }
    )
    if element.class.include? "fa-check-square"
      cable_ready.remove_css_class(selector: "##{element.dataset.id}", name: "fa-check-square")
      cable_ready.remove_css_class(selector: "##{element.dataset.id}", name: "text-primary")
      cable_ready.add_css_class(selector: "##{element.dataset.id}", name: "fa-square")
    else
      cable_ready.add_css_class(selector: "##{element.dataset.id}", name: "fa-check-square")
      cable_ready.add_css_class(selector: "##{element.dataset.id}", name: "text-primary")
      cable_ready.remove_css_class(selector: "##{element.dataset.id}", name: "fa-square")
    end

    attempt = Attempt.find(element.dataset.attempt)
    attempt_result = attempt.result
    attempt.success! if attempt_result == Attempt.results.invert[0]
    attempt.in_process! if attempt_result == Attempt.results.invert[2]

    morph :nothing
  end
end

