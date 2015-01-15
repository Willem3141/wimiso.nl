$(document).ready(function() {
    var $headerBottom = $('.header-bottom'),
        $header = $('header'),
        $clone = $header.before($headerBottom.clone().addClass('clone'))

    $(window).on('scroll', function() {
        // laat de gekopieerde header zien als we ver genoeg naar onder zijn gescrolld
        var fromTop = $(window).scrollTop()
        $('body').toggleClass('down', (fromTop > 200)) // header-top heeft hoogte 200px
        
        // parallax-effect voor het plaatje
        $('.header-top').css('background-position', '0% ' + (50 - fromTop / 8) + '%')
    })
})
