
// function new_form() {
//   const buttonArea = document.getElementById("form_button");
//   buttonArea.addEventListener('mouseover', function(){
//     this.setAttribute("style", "background-color:#FFBEDA;")
//   })
//   buttonArea.addEventListener('mouseout', function(){
//     this.removeAttribute("style", "background-color:#FFBEDA;")
//   })
//     var i = 1 ;
    
//     buttonArea.addEventListener('click', (e) => {
//       e.preventDefault();
//       const sample=document.getElementById('chapter_area');

//       const input_data = document.createElement('input');
//       input_data.type = 'text_area';
//       input_data.id = 'input_form' + i;
//       input_data.name = 'chapter[]';
//       input_data.setAttribute(
//         "style", "background-color: #ffe600; width: 50%; display: block; margin: 10px 0; height: 30px;"
//         );
    
//       const parent = document.getElementById('new_form_text');
//       parent.insertBefore(input_data,buttonArea);
//       i++ ;
//     });
// }
// window.addEventListener("load", new_form);