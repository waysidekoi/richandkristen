$ ->
	$('.girls').on 'click', 'dd', (e)->
    $('.girls').find('dd').removeClass('active')
    $(e.target).closest('dd').addClass('active')

	$('.boys').on 'click', 'dd', (e)->
    $('.boys').find('dd').removeClass('active')
    $(e.target).closest('dd').addClass('active')

	$('.gw').on 'click', 'dd', (e)->
    $('.gw').find('dd').removeClass('active')
    $(e.target).closest('dd').addClass('active')

  $("#groomswomen").on "after-slide-change.fndtn.orbit", (event, orbit) ->
    $('.gw').find('dd').removeClass('active')
    x = $(".gw").find('a[data-orbit-link=gw'+orbit.slide_number+ ']')
    x.closest('dd').addClass('active')

  $("#girls").on "after-slide-change.fndtn.orbit", (event, orbit) ->
    $('.girls').find('dd').removeClass('active')
    x = $(".girls").find('a[data-orbit-link=g'+orbit.slide_number+ ']')
    x.closest('dd').addClass('active')

  $("#boys").on "after-slide-change.fndtn.orbit", (event, orbit) ->
    $('.boys').find('dd').removeClass('active')
    x = $(".boys").find('a[data-orbit-link=b'+orbit.slide_number+ ']')
    x.closest('dd').addClass('active')

  $(".circular").on "mouseenter", (e) ->
    image = $(e.target).css('background-image')
    name = /\w+\.jpg/.exec(image)

    switch (name[0])
      when "Michael.jpg"
        $(e.target).css('background', "url('/images/bridal_party/Michael1.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
      when "Michael1.jpg"
        $(e.target).css('background', "url('/images/bridal_party/Michael.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
      when "Marc.jpg"
        $(e.target).css('background', "url('/images/bridal_party/Marc1.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
      when "Marc1.jpg"
        $(e.target).css('background', "url('/images/bridal_party/Marc.jpg') no-repeat")
        $(e.target).css('background-size', "cover")

  $(".circular").on "mouseleave", (e) ->
    image = $(e.target).css('background-image')
    name = /\w+\.jpg/.exec(image)

    switch (name[0])
      when "Michael1.jpg"
        $(e.target).css('background', "url('/images/bridal_party/Michael.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
      when "Marc1.jpg"
        $(e.target).css('background', "url('/images/bridal_party/Marc.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
