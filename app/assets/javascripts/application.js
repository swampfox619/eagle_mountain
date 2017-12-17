// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require ckeditor/init
//= require_tree .

$(document).on("turbolinks:load", function(){
    
    var features = $('div[id^="feature-"]').hide();
    var projects = $('div[id^="project-"]').hide();
    i = 0;
    j = 0;
    
    var cycle_features = function cycle() { 
        features.eq(j).fadeIn(600)
                  .delay(6000)
                  .fadeOut(600, cycle);
        j = ++j % features.length; 
    };
    
    var cycle_projects = function cycle() { 
        projects.eq(i).fadeIn(600)
                  .delay(6000)
                  .fadeOut(600, cycle);
        i = ++i % projects.length; 
        console.log(i);
    };
    
    
    var process_transition = function(process){
        $(process).mouseover(function(){
            $(this).css("transform", "scale(1.1)")
                  .css("transition", "transform, .5s");
            $(this).find('.process-info').fadeIn(500);
        });
        
        $(process).mouseleave(function(){
            $(this).css("transform", "scale(1)")
                  .css("transition", "transform, .5s");
              $(this).find('.process-info').fadeOut(500);
        });
    };
    
    var highlight_arrows = function(){
        $('.packages-container').mouseover(function(){
            var firstWidth = $('#first').width();
            var secondWidth = $('#second').width();
        
            if (firstWidth <= secondWidth +1 ){
                $(this).find('.left-arrow').css({
                    opacity : 1,
                    transition : 'opacity, 1s'
                });
            } else {
                console.log('working')
                $(this).find('.right-arrow').css({
                    opacity : 1,
                    transition : 'opacity, 1s'
                });
            };
        });
        
        $('.packages-container').mouseleave(function(){
            var firstWidth = $('#first').width();
            var secondWidth = $('#second').width();

            if (firstWidth <= secondWidth + 1){
                $(this).find('.left-arrow').css({
                    opacity : 0,
                    transition : 'opacity, 1s'
                });
            }else{
                $(this).find('.right-arrow').css({
                    opacity : 0,
                    transition : 'opacity, 1s'
                });
            };
        });
    };
    
    var packages_slider = function(){
        $('.packages-container').on("click", function(){
            var firstWidth = $('#first').width();
            var secondWidth = $('#second').width();
            
            if (firstWidth <= secondWidth + 1){
                slide_package('#first', '#second');
            }else{
                slide_package('#second', '#first');
            };
        }); 
    };
    
    var slide_package = function(first, second){
        $(first).find('.right').show();
        $(second).find('.right').hide();
        $(first).find('.arrow').hide();
        $(first).css({
            width      : '70%',
            transition : 'width, 1s'
        });
        $(second).css({
            width      : '30%',
            transition : 'width, 1s'
        });
    };
    
    var blogShowMore = function(){
        $('.blog-index-ui').on("click", function(){
            $(this).find('.blog-body-ui').slideToggle(1000);
        })
    };
    
    var contactExpand = function(){
        $('.contact-bubble').css("transform", "scale(1.25)")
            .css("transition", "transform, .5s")
        window.setTimeout(function(){
            $('.contact-bubble').css("transform", "scale(1)")
                .css("transition", "transform, 2s")
        },500);
        
        $('.contact-bubble').mouseover( function(){
            $('.contact-bubble').css("transform", "scale(1.25)")
            .css("transition", "transform, .5s")
        });
        
        $('.contact-bubble').mouseleave( function(){
            $('.contact-bubble').css("transform", "scale(1)")
            .css("transition", "transform, 2s")
        });
    };
    

    if($(window).width() >= 479){
        contactExpand();
        blogShowMore();
        highlight_arrows();
        process_transition('#process-1');
        process_transition('#process-2');
        process_transition('#process-3');
        packages_slider();
        cycle_features();
        cycle_projects();
    }
    
});