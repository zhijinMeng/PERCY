
"use strict";

let FaceDetection = require('./FaceDetection.js');
let Gesture = require('./Gesture.js');
let FaceDetections = require('./FaceDetections.js');
let Rectangle = require('./Rectangle.js');
let FollowMeResponse = require('./FollowMeResponse.js');
let HeadPanTilt = require('./HeadPanTilt.js');
let LegDetections = require('./LegDetections.js');
let HogDetection = require('./HogDetection.js');
let HogDetections = require('./HogDetections.js');
let DetectedPerson = require('./DetectedPerson.js');
let DetectedObject = require('./DetectedObject.js');
let FaceRecognitionResult = require('./FaceRecognitionResult.js');
let FaceRecognitionAction = require('./FaceRecognitionAction.js');
let FaceRecognitionGoal = require('./FaceRecognitionGoal.js');
let FaceRecognitionFeedback = require('./FaceRecognitionFeedback.js');
let FaceRecognitionActionGoal = require('./FaceRecognitionActionGoal.js');
let FaceRecognitionActionResult = require('./FaceRecognitionActionResult.js');
let FaceRecognitionActionFeedback = require('./FaceRecognitionActionFeedback.js');

module.exports = {
  FaceDetection: FaceDetection,
  Gesture: Gesture,
  FaceDetections: FaceDetections,
  Rectangle: Rectangle,
  FollowMeResponse: FollowMeResponse,
  HeadPanTilt: HeadPanTilt,
  LegDetections: LegDetections,
  HogDetection: HogDetection,
  HogDetections: HogDetections,
  DetectedPerson: DetectedPerson,
  DetectedObject: DetectedObject,
  FaceRecognitionResult: FaceRecognitionResult,
  FaceRecognitionAction: FaceRecognitionAction,
  FaceRecognitionGoal: FaceRecognitionGoal,
  FaceRecognitionFeedback: FaceRecognitionFeedback,
  FaceRecognitionActionGoal: FaceRecognitionActionGoal,
  FaceRecognitionActionResult: FaceRecognitionActionResult,
  FaceRecognitionActionFeedback: FaceRecognitionActionFeedback,
};
