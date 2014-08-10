const libraryNumberRegex = new RegExp("[0-9]{3}-[0-9]{4}");
const emailRegex = new RegExp("\\S+@\\S+\\.\\S+");
const phoneRegex= new RegExp("[0-9]{7,13}");

$(function() {
    $('#submit').prop('disabled',true);

    $('#libraryInput').keyup(function(){
      var valid =  $('#libraryInput').val().match(libraryNumberRegex)
        keyUp($('#libraryInput'), valid);
    });

    $('#nameInput').keyup(function(){
        var valid = $('#nameInput').val().length > 1;
            keyUp($('#nameInput'), valid);
    });

    $('#passwordInput').keyup(function(){
        var valid = $('#passwordInput').val().length > 5;
        keyUp($('#passwordInput'), valid);
    });

    $('#emailInput').keyup(function(){
        var valid = $('#emailInput').val().match(emailRegex);
        keyUp($('#emailInput'), valid);
    });


    $('#phoneInput').keyup(function(){
        var valid = $('#phoneInput').val().match(phoneRegex);
        keyUp($('#phoneInput'), valid);
    });

    $('#addressInput').keyup(function(){
        var valid = $('#addressInput').val().length > 10;
        keyUp($('#addressInput'), valid);
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
    $('#submit').prop('disabled',!($('#libraryInput').val().match(libraryNumberRegex) &&
        $('#emailInput').val().match(emailRegex) &&
        $('#phoneInput').val().match(phoneRegex) &&
        $('#nameInput').val().length > 1 &&
        $('#addressInput').val().length > 10 &&
        $('#passwordInput').val().length > 5));
};
