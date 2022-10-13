import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["card", "section"];

  ondrag() {
    setTimeout(() => {
      this.cardTarget.classList.add("hidden");
    }, 0);
  }

  handleDragover(event) {
    event.preventDefault();
  }

  handleDrop(event) {
    event.preventDefault();
    console.log("dropped!");
    //this.cardTarget.classList.remove("hidden");
  }
}
