/*!
 * Start Bootstrap - Freelancer v4.0.0-alpha (http://startbootstrap.com/template-overviews/freelancer)
 * Copyright 2013-2017 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-freelancer/blob/master/LICENSE)
 */

!function(a){"use strict";a('a[href*="#"]:not([href="#"])').click(function(){if(location.pathname.replace(/^\//,"")==this.pathname.replace(/^\//,"")&&location.hostname==this.hostname){var o=a(this.hash);if(o=o.length?o:a("[name="+this.hash.slice(1)+"]"),o.length)return a("html, body").animate({scrollTop:o.offset().top-48},1e3,"easeInOutExpo"),!1}}),a("body").scrollspy({target:"#mainNav",offset:54}),a(".navbar-collapse>ul>li>a").click(function(){a(".navbar-collapse").collapse("hide")}),a(window).scroll(function(){a("#mainNav").offset().top>100?a("#mainNav").addClass("navbar-shrink"):a("#mainNav").removeClass("navbar-shrink")}),a(function(){a("body").on("input propertychange",".floating-label-form-group",function(o){a(this).toggleClass("floating-label-form-group-with-value",!!a(o.target).val())}).on("focus",".floating-label-form-group",function(){a(this).addClass("floating-label-form-group-with-focus")}).on("blur",".floating-label-form-group",function(){a(this).removeClass("floating-label-form-group-with-focus")})})}(jQuery);
