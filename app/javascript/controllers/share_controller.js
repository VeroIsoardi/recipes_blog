import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="share"
export default class extends Controller {
  static values = { title: String, url: String }

  async click(){
    try {
      await navigator.share({ title: this.titleValue, url: this.urlValue })
    }
    catch(e) {
      console.log('share error', e);
    }
  }
}
