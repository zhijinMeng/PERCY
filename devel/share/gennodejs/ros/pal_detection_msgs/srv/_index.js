
"use strict";

let StartEnrollment = require('./StartEnrollment.js')
let AddTexturedObject = require('./AddTexturedObject.js')
let SelectTexturedObject = require('./SelectTexturedObject.js')
let SetDatabase = require('./SetDatabase.js')
let Recognizer = require('./Recognizer.js')
let StopEnrollment = require('./StopEnrollment.js')
let ChangeObjectRecognizerModel = require('./ChangeObjectRecognizerModel.js')

module.exports = {
  StartEnrollment: StartEnrollment,
  AddTexturedObject: AddTexturedObject,
  SelectTexturedObject: SelectTexturedObject,
  SetDatabase: SetDatabase,
  Recognizer: Recognizer,
  StopEnrollment: StopEnrollment,
  ChangeObjectRecognizerModel: ChangeObjectRecognizerModel,
};
