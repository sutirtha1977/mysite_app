$(function() {  
    'use strict'

    var topoffset = 52; 

    $('.navbar-brand').click(function(e) {
        e.preventDefault();

        location.reload();
    });

    // toastr.options = {
    //   "closeButton": false,
    //   "debug": false,
    //   "newestOnTop": false,
    //   "progressBar": false,
    //   "positionClass": "toast-top-full-width",
    //   "preventDuplicates": false,
    //   "onclick": null,
    //   "showDuration": "1000",
    //   "hideDuration": "1000",
    //   "timeOut": "1000",
    //   "extendedTimeOut": "1000",
    //   "showEasing": "swing",
    //   "hideEasing": "linear",
    //   "showMethod": "fadeIn",
    //   "hideMethod": "fadeOut"
    // }

    $(document).on('turbolinks:load', function() {

        /************************************ 
        make menus drop automatically start 
        ************************************/
        $('ul.nav li.dropdown').hover(function() {
            $('.dropdown-menu', this).fadeIn();
        }, function() {
            $('.dropdown-menu', this).fadeOut('fast');
        });//hover
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