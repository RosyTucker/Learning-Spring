$(function() {
    if($('#ratingInput').length) {
        $('#ratingInput').keypress(function (evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

            var newVal = $('#ratingInput').val() + String.fromCharCode(evt.keyCode)
            if (newVal < 0 || newVal > 10)
                return false;

            return true;
        });
    }
});

$(function() {
    $('#submit').prop('disabled',true);
    var yearRegex = new RegExp("[0-9]{4}");
    $('#titleInput, #directorInput, #yearInput, #ratingInput').keyup(function() {
        var ratings = true;
        console.log($('#ratingInput').length);
        if($('#ratingInput').length){
            ratings = $('#ratingInput').val().length > 0;
        }

        $('#submit').prop('disabled',!($('#yearInput').val().match(yearRegex) &&
            $('#directorInput').val().length > 0 &&
            $('#titleInput').val().length > 0 &&
            ratings));
    });
});