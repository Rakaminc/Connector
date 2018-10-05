$(function () {
    $(document).on('click', '#use_mail', function () {
        $("#make").show('slow');
        $(".make").css('display', 'inline-block');
        $("#new").hide();
    });
    $(document).on('click', '#sns', function () {
        $("#new").show('slow');
        $("#make").hide();
    });
});