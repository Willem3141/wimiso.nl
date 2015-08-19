$(document).ready(function() {
    var $headerBottom = $('.header-bottom'),
        $header = $('header')

    $(window).on('scroll', function() {
        var fromTop = $(window).scrollTop()
        var tocPosition = $('#toc').offset().top
        $('body').toggleClass('down', (fromTop > tocPosition - 25))
        
        // parallax-effect voor het plaatje
        $('.header-top').css('background-position', '0% ' + (50 - fromTop / 8) + '%')
    })
    
    $('.navbar').on('mouseenter', function() {
        //$('body').addClass('submenu-down')
    });
    $('.navbar').on('mouseout', function() {
        $('body').removeClass('submenu-down')
    })
})
