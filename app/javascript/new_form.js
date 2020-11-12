
function new_form() {
  const buttonArea = document.getElementById("form_button");
  buttonArea.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#FFBEDA;")
  })
  buttonArea.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#FFBEDA;")
  })

    // buttonInput.innerText = "No." + i;
    var i = 1 ;
    buttonArea.innerText = "フォームの追加" + i;
    
    buttonArea.addEventListener('click', (e) => {
      e.preventDefault();
      // const formData = new FormData(document.getElementById("inputform_0"));
      // const XHR = new XMLHttpRequest();
      // XHR.open("POST", "/books", true);
      // XHR.responseType = "json";
      // XHR.send(formData);

      const input_data = document.createElement('input');
      // input_data.type = 'text_area';
      // input_data.id = 'input_form' + i;
      // input_data.placeholder = 'フォーム' + i;
      // const parent = document.getElementById('chapter_area');
      // parent.appendChild(input_data);
      // i++ ;
    });
}
window.addEventListener("load", new_form);

// function addForm() {
//   var input_data = document.createElement('input');
//   input_data.type = 'text_area';
//   input_data.id = 'inputform_' + i;
//   input_data.placeholder = 'フォーム-' + i;
//   var parent = document.getElementById('chapter_area');
//   parent.appendChild(input_data);
//   i++ ;
// }