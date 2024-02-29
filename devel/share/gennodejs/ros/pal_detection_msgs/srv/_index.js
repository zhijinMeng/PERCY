
"use strict";

let AddTexturedObject = require('./AddTexturedObject.js')
let SelectTexturedObject = require('./SelectTexturedObject.js')
let SetDatabase = require('./SetDatabase.js')
let Recognizer = require('./Recognizer.js')
let ChangeObjectRecognizerModel = require('./ChangeObjectRecognizerModel.js')
let StopEnrollment = require('./StopEnrollment.js')
let StartEnrollment = require('./StartEnrollment.js')

module.exports = {
  AddTexturedObject: AddTexturedObject,
  SelectTexturedObject: SelectTexturedObject,
  SetDatabase: SetDatabase,
  Recognizer: Recognizer,
  ChangeObjectRecognizerModel: ChangeObjectRecognizerModel,
  StopEnrollment: StopEnrollment,
  StartEnrollment: StartEnrollment,
};
