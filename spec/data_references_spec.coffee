require './spec_helper'
require '../src/jquery.transparency'

describe "Transparency", ->

  it "should provide reference to original data", ->
    doc = jQuery(
     '<div>
        <div class="person">
          <span class="name"></span>
          <span class="email"></span>
        </div>
      </div>')

    person =
      name:  'Jasmine Taylor'
      email: 'jasmine.tailor@example.com'

    doc.find('.person').render person
    data = doc.find('.name').data('data')
    expect(data).toEqual(person)

  it "should allow updating original data", ->
    doc = jQuery(
     '<div>
        <div class="person">
          <span class="name"></span>
          <span class="email"></span>
        </div>
      </div>')

    person =
      name:  'Jasmine Taylor'
      email: 'jasmine.tailor@example.com'

    doc.find('.person').render person
    data = doc.find('.person .name').data('data')
    data.name = 'Frank Sinatra'

    expect(data.name).toEqual(person.name)