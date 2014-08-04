$(function() {
    $('#submit').prop('disabled',true);
    var yearRegex = new RegExp("[0-9]{4}");
    $('#titleInput, #authorInput, #yearInput').keyup(function() {
        $('#submit').prop('disabled',!($('#yearInput').val().match(yearRegex) &&
            $('#authorInput').val().length > 0 &&
            $('#titleInput').val().length > 0));
    });
});