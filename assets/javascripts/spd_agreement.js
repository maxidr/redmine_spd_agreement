$(document).ready(function() {
  //ifm = document.createElement('IFRAME');
  //ifm.setAttribute('src', 'http://cluster.softwarepublico.gob.ar/condiciones.html');
  //ifm.setAttribute('id', 'agreement');
  //ifm.style.width = 1200 + 'px';
  //ifm.style.height = 480 + 'px';
  //document.body.appendChild(ifm);
  var agreement = new Agreement();
  if( !agreement.isAgree() ) {
    var agreements_page = "http://cluster.softwarepublico.gob.ar/condiciones.html";
    var reject_page = 'https://www.agendadigital.gob.ar/software-publico'; 
    var dialog_height = screen.height * 0.60;
    var dialog_width = screen.width * 0.90;
    var agreement_iframe = '<iframe id="#agreement" class="window-frame" src=' + agreements_page + ' />';
    $(agreement_iframe).dialog({
      dialogClass: 'no-close',
      modal: true,
      width: dialog_width,
      height: dialog_height,
      resizable: true,
      position: 'top',
      closeOnEscape: false,
      buttons: [
        { text: 'Acepto las condiciones', click: 
          function(){
            agreement.agree();
            $(this).dialog('close');
          }
        },
        { text: 'No acepto', click: function(){ window.location = reject_page } }
      ]
    }).width(dialog_width-10).height(dialog_height-10);
  } 
});


function Agreement(){
  this.key = "agree_conditions";
};

Agreement.prototype.isAgree = function(){
  key_index = document.cookie.indexOf(this.key);
  if( key_index != -1 ){
    value_index = document.cookie.indexOf(this.key) + this.key.length + 1;
    if( document.cookie.substring(value_index, value_index + 1) == "1" ) { return true; }
  }
  return false;
};

Agreement.prototype.agree = function(){
  document.cookie = this.key + "=" + 1;
};

