// function check_createform() {
//     var name = $('input[id="name"]').val();
//     var email = $('input[id="email"]').val();
//     var errmsg = "";
//     if(name == "") {
//         errmsg = "お名前を入力して下さい\n";
//     }
//     if(email == "") {
//         errmsg = errmsg + "メールアドレスを入力して下さい\n";
//     }
//     if(!email.match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)) {
//         errmsg = errmsg + "メールアドレスをご確認下さい\n";
//     }
//     if(errmsg != "") {
//         alert(errmsg);
//         return false;
//     }
//     $('form[id="new_user"]').submit();
// }

$(function(){
   $(document).on('click', '#submit_button' ,function(){
       var name = $('input[id="name"]').val();
       var email = $('input[id="email"]').val();
       var errmsg = "";
       if(name == "") {
           errmsg = "お名前を入力して下さい\n";
       }
       if(email == "") {
           errmsg = errmsg + "メールアドレスを入力して下さい\n";
       }
       if(!email.match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)) {
           errmsg = errmsg + "メールアドレスをご確認下さい\n";
       }
       if(errmsg != "") {
           alert(errmsg);
           return false;
       }
       $('form[id="new_user"]').submit();
   });
});
