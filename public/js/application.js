$(document).ready(function () {
    var loginLoaded = false,
        loginActive = false,
        signupLoaded = false,
        signupActive = false;


    $('header').on('click', '#login-button', function (event) {
        event.preventDefault();
        console.log('login');


        if (loginLoaded) {
            if (loginActive) {
                $('#login').fadeOut();
                loginActive = false;
            } else {
                $('#login').fadeIn();
                $('#signup').fadeOut();
                loginActive = true;
                signupActive = false;
            }
            return;
        }

        var $target = $(event.target);

        $.ajax({
            url: '/login',
            type: 'GET'
        }).done(function (response) {
            $('#login').html(response);
        });

        $('#login').fadeIn();
        $('#signup').fadeOut();
        loginLoaded = true;
        loginActive = true;
        signupActive = false;
    });

    $('header').on('click', '#signup-button', function (event) {
        event.preventDefault();

        if (signupLoaded) {
            if (signupActive) {
                $('#signup').fadeOut();
                signupActive = false;
            } else {
                $('#signup').fadeIn();
                $('#login').fadeOut();
                loginActive = false;
                signupActive = true;
            }
            return;
        }

        var $target = $(event.target);

        $.ajax({
            url: '/signup',
            type: 'GET'
        }).done(function (response) {
            $('#signup').html(response);
        });

        $('#signup').fadeIn();
        $('#login').fadeOut();
        signupLoaded = true;
        signupActive = true;
        loginActive = false;
    });

    $('div.event').on('submit', '#buy-tix', function (event) {
        event.preventDefault();
        var $target = $(event.target);
        console.log(event.target);
        console.log($target);
        console.log('buy');
        console.log($target.serialize());

        $.ajax({
            url: '/events/buytix',
            type: 'GET',
            data: $target.serialize()
        }).done(function (response) {
            console.log(response);
            $('form#buy-tix').html(response);
        });
    });

    $('div.full_blog').on('submit', '#edit-blog', function (event) {
       event.preventDefault();
        var $target = $(event.target);


        $.ajax({
            url: '/blog/edit',
            type: 'GET',
            data: $target.serialize()
        }).done(function (response) {
            console.log(response);
            $('div.full_blog').html(response);
        });
    });

});
