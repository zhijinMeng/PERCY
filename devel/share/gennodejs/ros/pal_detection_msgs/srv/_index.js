
"use strict";

let SetDatabase = require('./SetDatabase.js')
let StartEnrollment = require('./StartEnrollment.js')
let AddTexturedObject = require('./AddTexturedObject.js')
let ChangeObjectRecognizerModel = require('./ChangeObjectRecognizerModel.js')
let StopEnrollment = require('./StopEnrollment.js')
let SelectTexturedObject = require('./SelectTexturedObject.js')
let Recognizer = require('./Recognizer.js')

module.exports = {
  SetDatabase: SetDatabase,
  StartEnrollment: StartEnrollment,
  AddTexturedObject: AddTexturedObject,
  ChangeObjectRecognizerModel: ChangeObjectRecognizerModel,
  StopEnrollment: StopEnrollment,
  SelectTexturedObject: SelectTexturedObject,
  Recognizer: Recognizer,
};
