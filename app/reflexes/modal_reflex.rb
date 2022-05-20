class ModalReflex < ApplicationReflex

  def show_modal
    cable_ready.remove_css_class(selector: "#{element.dataset.selector}", name: "hidden")
    morph :nothing
  end

  def close_modal
    cable_ready.add_css_class(selector: "#{element.dataset.selector}", name: "hidden")
    morph :nothing
  end

end


