transparent = true;
hasTransparent = false;

$(function() {  
    'use strict'

    var topoffset = 52; 

    $('.best_in_place').best_in_place();
    $(".best_in_place").on("click",function(){});

    $('.navbar-brand').click(function(e) {
        e.preventDefault();

        location.reload();
    });

    /************************************ 
    navigation start 
    ************************************/
    if($('nav[role="navigation"]').hasClass('navbar-transparent')){
        hasTransparent = true;
    }
    $(document).scroll(function() {
       if(hasTransparent){
            if( $(this).scrollTop() > 615 ) {
                if(transparent) {
                    transparent = false;
                    $('nav[role="navigation"]').removeClass('navbar-transparent');
                }
            } else {
                if( !transparent ) {
                    transparent = true;
                    $('nav[role="navigation"]').addClass('navbar-transparent');
                }
            }
        }
    });
    /************************************ 
    navigation end 
    ************************************/

    /************************************ 
    make menus toggle for remote calls start 
    ************************************/
    // $('ul.dropdown-menu a[data-remote=true]').click(function () {
    //     $(this).closest('ul').prev('button').dropdown('toggle');
    // });
    /************************************ 
    make menus toggle for remote calls end 
    ************************************/


    $(document).on('turbolinks:load', function() {

        /************************************ 
        make menus drop automatically start 
        ************************************/
        // $('ul.nav li.dropdown').hover(function() {
        //     $('.dropdown-menu', this).fadeIn();
        // }, function() {
        //     $('.dropdown-menu', this).fadeOut('fast');
        // });
        /************************************ 
        make menus drop automatically end 
        ************************************/

        /************************************ 
        isotope services start 
        ************************************/
        var $container_s = $('#service-list');
        $container_s.isotope({
            filter: '* , all',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });
        $container_s.imagesLoaded().progress( function() {
            $container_s.isotope('layout');
        })
        $('.cat-s a').click(function() {
            $('.cat-s .active').removeClass('active');
            $(this).addClass('active');
            var selector = $(this).attr('data-filter');
            $container_s.isotope({
                filter: selector,
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });
            return false;
        });

        /************************************ 
        isotope services end 
        ************************************/

        /************************************ 
        isotope products start 
        ************************************/
        var $container_p = $('#product-list');
        $container_p.isotope({
            filter: '* , all',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });
        $container_p.imagesLoaded().progress( function() {
            $container_p.isotope('layout');
        })
        $('.cat-p a').click(function() {
            $('.cat-p .active').removeClass('active');
            $(this).addClass('active');
            var selector = $(this).attr('data-filter');
            $container_p.isotope({
                filter: selector,
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });
            return false;
        });
        /************************************ 
        isotope products end 
        ************************************/

        /************************************ 
        tool tip start 
        ************************************/
        $('[data-toggle="tooltip"]').tooltip();
        /************************************ 
        tool tip end 
        ************************************/

        /************************************ 
        listings equal height start 
        ************************************/
        var heights = $(".single-list").map(function() {
            return $(this).height();
        }).get(),

        maxHeight = Math.max.apply(null, heights);

        $(".single-list").height(maxHeight); 
 
        /************************************ 
        listings equal height end 
        ************************************/


        /************************************ 
        fullheight start 
        ************************************/
        //window height
        var wheight = $(window).height(); //get height of the window

        $('.fullheight').css('height', wheight);

        $(window).resize(function() {
            var wheight = $(window).height(); //get height of the window
            $('.fullheight').css('height', wheight);
            // $(".home-listing").height(maxHeight); 
        }) //on resize
        /************************************ 
        fullheight end 
        ************************************/


        /************************************ 
        scroll up start 
        ************************************/
        $(function () {
            $.scrollUp({
                scrollName: 'scrollUp', // Element ID
                scrollDistance: 300, // Distance from top/bottom before showing element (px)
                scrollFrom: 'top', // 'top' or 'bottom'
                scrollSpeed: 300, // Speed back to top (ms)
                easingType: 'linear', // Scroll to top easing (see http://easings.net/)
                animation: 'fade', // Fade, slide, none
                animationSpeed: 200, // Animation in speed (ms)
                scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
                        //scrollTarget: false, // Set a custom target element for scrolling to the top
                scrollText: '<i class="fa fa-angle-double-up animated bounce"></i>', // Text for element, can contain HTML
                scrollTitle: false, // Set a custom <a> title if required.
                scrollImg: false, // Set true to use image
                activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
                zIndex: 2147483647 // Z-Index for the overlay
            });
        });

        /************************************ 
        scroll up end 
        ************************************/

    });

});