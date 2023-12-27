import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["checkbox"];

  checkAllChecked() {
    const allChecked = this.checkboxTargets.every(
      (checkbox) => checkbox.checked
    );
    if (allChecked) {
      this.showModal();
    }
  }

  showModal() {
    const modal = document.getElementById("my_modal_1");
    modal.showModal(); // モーダルを表示
  }
}
