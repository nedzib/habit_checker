import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    static targets = [ "hash", "output" ]

    connect() {
    }

    robohash() {
        console.log(this.hashTarget.value)
        document.getElementById("roboimg").src = "https://robohash.org/"+this.hashTarget.value+".png?size=300x300&set=set1"
    }
}
