function validarForma(forma){
    var usuario=forma.usuario;
    if(usuario.value==="" || usuario.value==="Escribir Usuario"){
        alert("Debe proporcionar nombre usuario"); 
        usuario.focus();
        usuario.select();
        return false;
    }
    
    var password=forma.password;
    if(password.value==="" || password.value.length <3){
        alert("Password requiere minimo 3 caracteres");
        password.focus();
        password.select();
        return false;
    }
    
    var tecnologias =forma.tecnologia;
    var checkseleccionado=false;
    
    for(var i=0;i<tecnologias.length;i++){
        if(tecnologias[i].checked){
            checkseleccionado=true;
        }
    }
    if(!checkseleccionado){
        alert("debe seleccionar una tecnologia");
        return false;
    }
    
    var generos=forma.genero;
    var radioSeleccionado=false;
    
    for(var i=0;i<generos.length;i++){
        if(generos[i].checked){
            radioSeleccionado=true;
        }
    }
    
    if(!radioSeleccionado){
        alert("debe seleccionar un genero");
        return false;
    }
    
    var ocupacion=forma.ocupacion;
    if(ocupacion.value===""){
        alert("debe seleccionar una ocupacion");
        return false;
    }
    //formulario es valido si no se encuentra al final ningun return false
    alert("validado, enviando al servidor");
    return true;
    
}