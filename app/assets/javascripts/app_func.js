$(function() {  

    var topoffset = 52; 


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
        isotope gallery start 
        ************************************/
        var $gallery = $('.gallery').isotope({
          // options
          itemSelector: '.photo',
          layoutMode: 'masonry'
        });

        $gallery.imagesLoaded().progress( function() {
            $gallery.isotope('layout');
        })
        /************************************ 
        isotope gallery end 
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



    });

});