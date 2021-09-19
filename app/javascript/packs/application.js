import '../stylesheets/application.scss'
import "@fortawesome/fontawesome-free/css/all.css"

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import 'jquery/dist/jquery'

import './bootstrap_custom.js'
import 'admin-lte/dist/js/adminlte'

import 'select2/dist/js/select2'
import 'select2/dist/js/i18n/pt-BR'

import 'cocoon-rails/src/cocoon'

import 'bootstrap-table/dist/bootstrap-table'
import 'bootstrap-table/dist/locale/bootstrap-table-pt-BR'

import './fileinput'

import 'bootstrap-fileinput/js/locales/pt-BR'
import 'bootstrap-fileinput/themes/fas/theme'

import 'cocoon-rails/src/cocoon'

import Inputmask from "inputmask"

// jquery restante
$(document).ready(() => {
  $('#plans').on('cocoon:after-insert', (e, form) => {
    money()
  })

  $('input[id$=zipcode]').blur(function () {
    via_cep($(this))
  })

  set_select2()
  apply_select2_cities()

  $("#team_principal_attributes_person_id").select2({
    placeholder: "Selecionar Analista",
    language: "pt-BR",
    theme: "bootstrap4"
  })

  $('#team_principal_attributes_plan_table_id').change(function() {
    $('#dependents_body input[id$=_plan_table_id]').val($(this).val())
    $('#dependents_body input[id$=_plan_table_description]').val($(this).find('option:selected').text())
  })

  $('#team_principal_attributes_person_id').on('select2:select', function (e) {
    var data = e.params.data
    $.ajax({
      method: "POST",
      dataType: "json",
      url: "/people/" + data.id + "/dependents",
      success: function (response) {
        if (response.length) {
          let table = $('#dependents_body')
          table.find('.remove_dependent').click()
          for (let i = 0; i < response.length; i++) {
            $('#add_dependent').click()
            let line = table.find('tr:last')
            line.find('input[id$=_person_id]').val(response[i].id)
            line.find('input[id$=_person_name]').val(response[i].name)
            line.find('input[id$=_plan_table_id]').val($('#team_principal_attributes_plan_table_id').val())
            line.find('input[id$=_plan_table_description]').val($('#team_principal_attributes_plan_table_id option:selected').text())
          }
        }
      }
    })
  })
})

document.addEventListener('DOMContentLoaded', () => {
  tooltips()
  update_errors_navbar_tip()
  money()

  Inputmask("999\.999\.999\-99").mask('.cpf_mask')
  Inputmask("99999\-999").mask('.zipcode_mask')
  Inputmask("(99)99999\-9999").mask('.phone_mask')
  
  // selecionar a aba e colocar na url
  let hash = window.location.hash
  hash && $('ul.nav a[href="' + hash + '"]').tab('show')

  $('.nav-pills a').click(function (e) {
    $(this).tab('show')
    let scrollmem = $('body').scrollTop() || $('html').scrollTop()
    window.location.hash = this.hash
    $('html,body').scrollTop(scrollmem)
  })

  $('#btnToggle').click(() => {
    $('#navbarCollapse').toggle(1000)
  })
  
  $('.bootstrap-table-mobile').bootstrapTable({
    mobileResponsive: true,
    checkOnInit: true,
    classes: 'table table-striped table-hover table-bordered table-borderless'
  })

  if (document.querySelector('#btn_filter') !== null) {
    document.querySelector('#btn_filter').addEventListener('click', (event) => {
      console.log(event.target)
      if (event.target.querySelector("i").classList.contains('fa-angle-right')) {
        event.target.querySelector("i").classList.remove('fa-angle-right')
        event.target.querySelector("i").classList.add('fa-angle-down')
        event.target.closest('.card').querySelector(".card-body").style.display = "block"
      } else {
        event.target.querySelector("i").classList.remove('fa-angle-down')
        event.target.querySelector("i").classList.add('fa-angle-right')
        event.target.closest('.card').querySelector(".card-body").style.display = "none"
      }
    })
  }

  let $input = $('.fileinput')
  if ($input.length) {
    $input.each(function (i, el) {
      $($(this)).fileinput({
        theme: 'fas',
        language: 'pt-BR',
        'previewFileType': 'any',
        initialPreviewAsData: true,
        initialPreview: $(this).data('file'),
        initialPreviewConfig: [
          { caption: $(this).data('filename'), height: 'auto', widht: '120px', showRemove: false, showDrag: false, key: 1 }
        ],
        allowedFileExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
        showRemove: false,
        showClose: false,
        showUpload: false,
        dropZoneTitleClass: 'fileinput-drop-zone-title-adjust',
        frameClass: 'fileinput-preview-adjust',
        layoutTemplates: {
          footer: '<div class="row p-2">\n' +
            '    <div class="col-10 text-xs">{caption}{size}</div>\n' +
            '    <div class="col-2 text-center">{actions}</div>\n' +
            '</div>',
          btnBrowse: '<div tabindex="500" class="{css} btn-info "{status}>{icon}{label}</div>',
        },
      })
    })
  }
})

function tooltips() {
  $('[data-toggle="tooltip"]').tooltip()
}

function update_errors_navbar_tip() {
  $('form .nav-pills a').each(function (i, item) {
    // console.log($($(item).attr('href')))
    // console.log($($(item).attr('href')).find('.invalid-feedback'))
    
    if ($($(item).attr('href')).find('.invalid-feedback').length > 0) {
      // console.log($(".nav-tabs li:nth-child(" + (i + 1) + ") i"))
      $(item).append(
        ' <span data-toggle="tooltip" title="" class="badge bg-red" data-original-title="' +
        $($(item).attr('href')).find('.invalid-feedback').length +
        ' erro' +
        ($($(item).attr('href')).find('.invalid-feedback').length > 1 ? 's' : '') +
        ' nesta aba">' +
        $($(item).attr('href')).find('.invalid-feedback').length +
        '</span>')
    }
  })
  tooltips()
}


function set_select2() {
  let selects = $('.select2')
  if (selects.length) {
    selects.each(function (i, el) {
      $(el).select2({
        theme: "bootstrap4"
      })
      if($(el).hasClass('is-invalid')) {
        $(el).next().addClass('has-error')
      }
    })
  }
}

function money() {
  Inputmask.extendAliases({
    reais: {
      prefix: "R$ ",
      groupSeparator: ".",
      radixPoint: ',',
      alias: "numeric",
      placeholder: "0",
      autoGroup: !0,
      digits: 2,
      digitsOptional: !0,
      clearMaskOnLostFocus: !1
    }
  })

  Inputmask({
    alias: 'reais'
  }).mask(document.querySelectorAll(".currency"))
}

function via_cep(input) {
  let form = input.parent().parent().parent()
  $.post("/utils/postal_code", { postal_code: input.val() }, function (data) {
    if (data) {
      console.log(data)
      form.find('input[id$=street]').val(data.data.response.logradouro)
      form.find('input[id$=district]').val(data.data.response.bairro)
      form.find('input[id$=complement]').val(data.data.response.complemento)
      if (data.city) {
        let select = form.find('select[id$=city_id]')
        let option = new Option(data.city.name, data.city.id, true, true)
        select.append(option).trigger('change')
      }
    }
  })
}

function apply_select2_cities() {
  $(".select2_cities").select2({
    placeholder: "Buscar Cidade",
    minimumInputLength: 3,
    language: "pt-BR",
    theme: "bootstrap4",
    ajax: {
      type: 'post',
      dataType: 'json',
      url: "/utils/cities",
      processResults: function (data) {
        return {
          results: data
        }
      }
    }
  })
}