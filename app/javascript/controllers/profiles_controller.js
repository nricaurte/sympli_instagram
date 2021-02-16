import ApplicationController from './application_controller'

export default class extends ApplicationController {
    static targets = ['query', 'activity', 'count', 'list']

    beforeSearch (element, reflex) {
        this.activityTarget.hidden = false
        //this.countTarget.hidden = true
    }

    search (event) {
        event.preventDefault()
        this.stimulate('ProfilesReflex#search', this.queryTarget.value)
    }
}