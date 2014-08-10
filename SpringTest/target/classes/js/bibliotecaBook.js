var yearRegex = new RegExp("[0-9]{4}");

$(function() {
    $('#submit').prop('disabled',true);

    $('#titleInput').keyup(function(){
        var valid = $('#titleInput').val().length > 1;
        keyUp($('#titleInput'), valid);
    });

    $('#authorInput').keyup(function(){
        var valid = $('#authorInput').val().length > 1;
        keyUp($('#authorInput'), valid);
    });

    $('#yearInput').keyup(function(){
        var valid = $('#yearInput').val().match(yearRegex);
            keyUp($('#yearInput'), valid);
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
    $('#submit').prop('disabled',!($('#yearInput').val().match(yearRegex) &&
        $('#authorInput').val().length > 1 &&
        $('#titleInput').val().length > 1));
};