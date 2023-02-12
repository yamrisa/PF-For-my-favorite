// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels";
import "jquery";
//import "bootstrap";
import "../stylesheets/application"

import '@fortawesome/fontawesome-free/js/all'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// require("jquery")

require('packs/raty')

/* global $*/
$(function() {
    $(".openbtn").click(function () {//ボタンがクリックされたら
    	$(this).toggleClass('active');//ボタン自身に activeクラスを付与し
        $("#g-nav").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
        if ($("#g-nav").css("height") != '0px') {
            $("#g-nav").css("height", "0")  
        } else {
            $("#g-nav").css("height", "100vh")
        }
    });

$("#g-nav a").click(function () {//ナビゲーションのリンクがクリックされたら
    $(".openbtn").removeClass('active');//ボタンの activeクラスを除去し
    $("#g-nav").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
});
});