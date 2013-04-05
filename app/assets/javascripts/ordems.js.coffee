# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#ordem_criacao").bind "railsAutocomplete.select", ->
    $("#ordem_show_value").val($("#ordem_criacao").val())
    $(".demonstrative_value").replaceWith("<span class='demonstrative_value'>"+$("#ordem_cliente_id").val()+"</span>")
    $(".icon-remove").replaceWith("<i class='icon-ok'></i>")
jQuery ->
  $("#new_ordem").submit ->
    if ($("#ordem_cliente_id").val() is "0") or ($("#ordem_cliente_id").val() is "")
      alert "Nenhum cliente foi selecionado!\rUse a barra de busca para selecionar o cliente."
      false
