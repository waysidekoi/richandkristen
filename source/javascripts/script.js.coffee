$ ->
	$('.girls').on 'click', 'dd', (e)->
    $('.girls').find('dd').removeClass('active')
    $(e.target).closest('dd').addClass('active')

	$('.boys').on 'click', 'dd', (e)->
    $('.boys').find('dd').removeClass('active')
    $(e.target).closest('dd').addClass('active')

  $("#girls").on "after-slide-change.fndtn.orbit", (event, orbit) ->
    $('.girls').find('dd').removeClass('active')
    x = $(".girls").find('a[data-orbit-link=g'+orbit.slide_number+ ']')
    x.closest('dd').addClass('active')

  $("#boys").on "after-slide-change.fndtn.orbit", (event, orbit) ->
    $('.boys').find('dd').removeClass('active')
    x = $(".boys").find('a[data-orbit-link=b'+orbit.slide_number+ ']')
    x.closest('dd').addClass('active')
