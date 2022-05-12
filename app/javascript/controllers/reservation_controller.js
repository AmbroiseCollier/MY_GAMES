import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    console.log('This is reservation js controller');  }

  accept() {
    console.log('button has been clicked');
  }
}
