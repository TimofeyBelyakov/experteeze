import { Application } from "@hotwired/stimulus"

const application = Application.start()

application.debug = false
window.Stimulus   = application

export { application }
import * as jQuery from 'jquery';
window.$ = jQuery
//= require bootstrap