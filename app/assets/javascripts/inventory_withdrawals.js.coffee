jQuery ($) ->

  # nested_form position override
  NestedFormEvents::insertFields = (content, assoc, link) ->
    inserted = $(".above_new_items").after content
    add_autocomplete("input[data-autocomplete]")
    inserted

  # typeahead/autocomplete
  add_autocomplete = (el) ->
    $(el).typeahead
      source: (typeahead, query) ->
        $.ajax
          url: "/inventory_withdrawals/autocomplete_bottling_display_name?term=" + query
          success: (data) ->
            typeahead.process(data)

      property: "label"
      onselect: (selected) ->
        $($(el).data("id-element")).val(selected.id)

  $("input[data-autocomplete]").each (i, elem) ->
    add_autocomplete elem