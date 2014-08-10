const libraryNumberRegex = new RegExp("[0-9]{3}-[0-9]{4}");

$(function() {
    $('#submit').prop('disabled',true);

    $('#libraryInput').keyup(function(){
        keyUp($('#libraryInput'), $('#libraryInput').val().match(libraryNumberRegex));
    });

    $('#passwordInput').keyup(function(){
        checkSubmit();
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
    $('#submit').prop('disabled',!($('#libraryInput').val().match(libraryNumberRegex)));

};
