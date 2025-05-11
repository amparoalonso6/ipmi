console.log("hola mimi");

var input_nombre = document.getElementById("nombre");
var input_apellido = document.getElementById("apellido");
var input_email = document.getElementById("email");
var input_password = document.getElementById("password");
var input_password2 = document.getElementById("password2");
var input_submit = document.getElementById("boton-enviar");

console.log(input_nombre);
console.log(input_apellido);
console.log(input_submit);

input_submit.addEventListener("click", enviarFormulario);

function enviarFormulario(event) {
    event.preventDefault(); 
  
    var valor_nombre = input_nombre.value;
    var valor_apellido = input_apellido.value;
    var valor_apodotortu = input_apodotortu.value;
    var valor_email = input_email.value;
    
  
    console.log("Nombre:", valor_nombre);
    console.log("Apellido:", valor_apellido);
    console.log("Email:", valor_email);
  
    
    var placeholder_nombre = document.getElementById("nombre-placeholder");
    var placeholder_apellido = document.getElementById("apellido-placeholder");
    var placeholder_apodotortu = document. getElementById ("apodotortu-placeholder")
    var placeholder_email = document.getElementById("email-placeholder");
    
    
    placeholder_nombre.innerHTML = valor_nombre;
    placeholder_apellido.innerHTML = valor_apellido;
    placeholder_apodotortu.innerHTML = valor_apodotortu
    placeholder_email.innerHTML = valor_email;
  }
  