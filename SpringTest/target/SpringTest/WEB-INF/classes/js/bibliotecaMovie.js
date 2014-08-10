var yearRegex = new RegExp("[0-9]{4}");

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

    $('#titleInput').keyup(function(){
        var valid =$('#titleInput').val().length > 0;
        keyUp($('#titleInput'), valid);
    });

    $('#directorInput').keyup(function(){
        var valid =$('#directorInput').val().length > 0;
        keyUp($('#directorInput'), valid);
    });

    $('#yearInput').keyup(function(){
        var valid = $('#yearInput').val().match(yearRegex);
        keyUp($('#yearInput'), valid);
    });

    $('#ratingInput').keyup(function(){
        var valid =$('#ratingInput').val().length > 0;
        keyUp($('#ratingInput'), valid);
    });
});

function keyUp(elem, valid) {
    checkSubmit();
    if (valid) {
        elem.addClass('input-success').removeClass('input-error');
    } else {
        elem.addClass('input-error').removeClass('input-success');
    }
};

function checkSubmit(){
    var ratings = true;
    if($('#ratingInput').length)
        ratings = $('#ratingInput').val().length > 0;

    $('#submit').prop('disabled',!($('#yearInput').val().match(yearRegex) &&
        $('#directorInput').val().length > 0 &&
        $('#titleInput').val().length > 0 &&
        ratings));
};