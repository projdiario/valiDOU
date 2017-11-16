$(window).resize(function() {
    $('.main>div').css('padding-top', parseInt($('#navbar').css('height')) + 10);
});

$(window).load(function() {
    $('.main>div').css('padding-top', parseInt($('#navbar').css('height')) + 10);
});