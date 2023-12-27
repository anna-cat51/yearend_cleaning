import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["checkbox"];

  connect() {
    this.checkAllChecked();
  }

  checkAllChecked() {
    const allChecked = this.checkboxTargets.every(checkbox => checkbox.checked);
    if (allChecked) {
      // 直接モーダルを表示する
      $('#congratulationsModal').modal('show');
    }
  }


  showModal() {
    // モーダルを表示するためのコード
    const modal = document.getElementById("myModal");
    modal.style.display = "block";
    
    // モーダルを閉じるボタン
    const closeModalButton = document.getElementById("closeModal");
    closeModalButton.addEventListener("click", () => {
      modal.style.display = "none";
    });
  }
}
