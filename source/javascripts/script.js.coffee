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
    name = /\w+-\w+.jpg/.exec(image)[0]
    michaelRegex = /^Michael-\w+.jpg$/
    michael1Regex = /^Michael1-\w+.jpg$/
    marcRegex = /^Marc?\w+\.jpg$/
    marc1Regex = /^Marc1?\w+\.jpg$/

    if michaelRegex.test(name)
        $(e.target).css('background', "url('/images/bridal_party/Michael1.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
    else if michael1Regex.test(name)
        $(e.target).css('background', "url('/images/bridal_party/Michael.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
    else if marcRegex.test(name)
        $(e.target).css('background', "url('/images/bridal_party/Marc1.jpg') no-repeat")
        $(e.target).css('background-size', "cover")
    else if marc1Regex.test(name)
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
