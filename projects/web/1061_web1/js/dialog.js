
const button = document.getElementById('show');
button.addEventListener('click', () => {dialog.showModal();});

function onClick(event) {
    if (event.target === dialog) {
      dialog.close();
    }
  }

const dialog = document.querySelector("dialog");
dialog.addEventListener("click", onClick);
