// ==UserScript==
// @name         chrome tabs outliner
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match       chrome-extension://eggkanocgddhmamlbiijnphhppkpkmkl/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

if(document.getElementById('mainViewMessagesStack')){
    document.getElementById('mainViewMessagesStack').removeChild(document.getElementsByClassName('mainViewMessage')[0]);
}

    setProMode();

function ifLite_goPro(){return false}

    // Your code here...
})();
