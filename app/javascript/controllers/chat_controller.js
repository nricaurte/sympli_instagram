import Rails from '@rails/ujs'
import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ['list', 'input', 'user', 'post']


  connect () {
    super.connect()
  }

  post (event) {
    console.log("Aquiiii")
    console.log(this.inputTarget.value)
    console.log(this.userTarget.value)
    console.log(this.postTarget.value)
    Rails.stopEverything(event)
    this.stimulate(
      'CommentReflex#create',
      this.inputTarget.value,
      this.userTarget.value,
      this.postTarget.value

    )
  }

  
}