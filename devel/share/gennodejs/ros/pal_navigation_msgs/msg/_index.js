
"use strict";

let GoToResult = require('./GoToResult.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let GoToActionResult = require('./GoToActionResult.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let GoToFeedback = require('./GoToFeedback.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let GoToAction = require('./GoToAction.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let JoyTurboResult = require('./JoyTurboResult.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let GoToGoal = require('./GoToGoal.js');
let Waypoint = require('./Waypoint.js');
let TabletPOI = require('./TabletPOI.js');
let Emergency = require('./Emergency.js');
let MapConfiguration = require('./MapConfiguration.js');
let NavigationStatus = require('./NavigationStatus.js');
let Highways = require('./Highways.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let POI = require('./POI.js');
let ServiceStatus = require('./ServiceStatus.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let VisualLocDB = require('./VisualLocDB.js');
let POIGroup = require('./POIGroup.js');
let AvailableMaps = require('./AvailableMaps.js');
let EulerAngles = require('./EulerAngles.js');
let PolarReading = require('./PolarReading.js');
let MissedWaypoint = require('./MissedWaypoint.js');
let LaserImage = require('./LaserImage.js');

module.exports = {
  GoToResult: GoToResult,
  JoyPriorityAction: JoyPriorityAction,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  GoToActionGoal: GoToActionGoal,
  VisualTrainingResult: VisualTrainingResult,
  JoyTurboFeedback: JoyTurboFeedback,
  GoToActionResult: GoToActionResult,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  VisualTrainingActionResult: VisualTrainingActionResult,
  VisualTrainingGoal: VisualTrainingGoal,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  GoToActionFeedback: GoToActionFeedback,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
  GoToFeedback: GoToFeedback,
  ExecuteParkingResult: ExecuteParkingResult,
  GoToPOIActionGoal: GoToPOIActionGoal,
  GoToPOIGoal: GoToPOIGoal,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  GoToPOIFeedback: GoToPOIFeedback,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  JoyTurboGoal: JoyTurboGoal,
  JoyTurboActionResult: JoyTurboActionResult,
  FollowWaypointsGoal: FollowWaypointsGoal,
  FollowWaypointsResult: FollowWaypointsResult,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  JoyPriorityGoal: JoyPriorityGoal,
  GoToPOIResult: GoToPOIResult,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  JoyPriorityActionResult: JoyPriorityActionResult,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  JoyTurboAction: JoyTurboAction,
  ExecuteParkingAction: ExecuteParkingAction,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  JoyPriorityFeedback: JoyPriorityFeedback,
  GoToAction: GoToAction,
  GoToPOIAction: GoToPOIAction,
  ExecuteParkingGoal: ExecuteParkingGoal,
  JoyTurboResult: JoyTurboResult,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  GoToPOIActionResult: GoToPOIActionResult,
  JoyPriorityResult: JoyPriorityResult,
  JoyTurboActionGoal: JoyTurboActionGoal,
  FollowWaypointsAction: FollowWaypointsAction,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  VisualTrainingAction: VisualTrainingAction,
  VisualTrainingFeedback: VisualTrainingFeedback,
  GoToGoal: GoToGoal,
  Waypoint: Waypoint,
  TabletPOI: TabletPOI,
  Emergency: Emergency,
  MapConfiguration: MapConfiguration,
  NavigationStatus: NavigationStatus,
  Highways: Highways,
  NiceMapTransformation: NiceMapTransformation,
  EulerAnglesStamped: EulerAnglesStamped,
  POI: POI,
  ServiceStatus: ServiceStatus,
  PolarReadingScan: PolarReadingScan,
  VisualLocDB: VisualLocDB,
  POIGroup: POIGroup,
  AvailableMaps: AvailableMaps,
  EulerAngles: EulerAngles,
  PolarReading: PolarReading,
  MissedWaypoint: MissedWaypoint,
  LaserImage: LaserImage,
};
