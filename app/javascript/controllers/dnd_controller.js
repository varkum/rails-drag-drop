import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["card", "section", "form"];

  ondrag(event) {
    setTimeout(() => {
      this.cardTarget.classList.add("hidden");
    }, 0);

    event.dataTransfer.setData("text", this.cardTarget.id);
  }

  handleDragover(event) {
    event.preventDefault();
  }

  handleDrop(event) {
    event.preventDefault();
    this.formTarget.setAttribute(
      "action",
      `/applicants/${event.dataTransfer.getData("text")}`
    );
    this.formTarget.requestSubmit();
    //console.log(this.formTarget);

    //this.cardTarget.classList.remove("hidden");
  }
}
