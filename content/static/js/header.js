$(document).ready(function() {
    var $headerBottom = $('.header-bottom'),
        $header = $('header')

    $(window).on('scroll', function() {
        // laat de gekopieerde header zien als we ver genoeg naar onder zijn gescrolld
        var fromTop = $(window).scrollTop()
        var tocPosition = $('#toc').offset().top
        $('body').toggleClass('down', (fromTop > tocPosition - 25))
        
        // parallax-effect voor het plaatje
        $('.header-top').css('background-position', '0% ' + (50 - fromTop / 8) + '%')
    })
})
