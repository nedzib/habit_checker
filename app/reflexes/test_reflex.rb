class TestReflex < ApplicationReflex
  def testsd
    p "REFLEX TEST "
    p element.dataset.dataset["data-attempt"]
    p "-----"
  end
end
