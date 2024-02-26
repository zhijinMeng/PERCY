
"use strict";

let GoToResult = require('./GoToResult.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let GoToGoal = require('./GoToGoal.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let GoToAction = require('./GoToAction.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let GoToActionResult = require('./GoToActionResult.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let GoToFeedback = require('./GoToFeedback.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let JoyTurboResult = require('./JoyTurboResult.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let NavigationStatus = require('./NavigationStatus.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let VisualLocDB = require('./VisualLocDB.js');
let Emergency = require('./Emergency.js');
let Highways = require('./Highways.js');
let PolarReading = require('./PolarReading.js');
let LaserImage = require('./LaserImage.js');
let EulerAngles = require('./EulerAngles.js');
let TabletPOI = require('./TabletPOI.js');
let POI = require('./POI.js');
let POIGroup = require('./POIGroup.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');
let MissedWaypoint = require('./MissedWaypoint.js');
let AvailableMaps = require('./AvailableMaps.js');
let Waypoint = require('./Waypoint.js');
let MapConfiguration = require('./MapConfiguration.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let ServiceStatus = require('./ServiceStatus.js');

module.exports = {
  GoToResult: GoToResult,
  JoyPriorityAction: JoyPriorityAction,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
  GoToGoal: GoToGoal,
  GoToPOIAction: GoToPOIAction,
  JoyTurboAction: JoyTurboAction,
  GoToPOIFeedback: GoToPOIFeedback,
  FollowWaypointsResult: FollowWaypointsResult,
  ExecuteParkingAction: ExecuteParkingAction,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  GoToPOIResult: GoToPOIResult,
  JoyPriorityFeedback: JoyPriorityFeedback,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  GoToPOIActionResult: GoToPOIActionResult,
  VisualTrainingAction: VisualTrainingAction,
  VisualTrainingGoal: VisualTrainingGoal,
  FollowWaypointsGoal: FollowWaypointsGoal,
  GoToActionGoal: GoToActionGoal,
  ExecuteParkingGoal: ExecuteParkingGoal,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  ExecuteParkingResult: ExecuteParkingResult,
  GoToAction: GoToAction,
  JoyPriorityResult: JoyPriorityResult,
  JoyTurboActionResult: JoyTurboActionResult,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  FollowWaypointsAction: FollowWaypointsAction,
  JoyTurboFeedback: JoyTurboFeedback,
  VisualTrainingFeedback: VisualTrainingFeedback,
  GoToActionResult: GoToActionResult,
  GoToPOIGoal: GoToPOIGoal,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  JoyPriorityGoal: JoyPriorityGoal,
  GoToPOIActionGoal: GoToPOIActionGoal,
  VisualTrainingActionResult: VisualTrainingActionResult,
  GoToActionFeedback: GoToActionFeedback,
  VisualTrainingResult: VisualTrainingResult,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  JoyPriorityActionResult: JoyPriorityActionResult,
  JoyTurboActionGoal: JoyTurboActionGoal,
  GoToFeedback: GoToFeedback,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  JoyTurboResult: JoyTurboResult,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  JoyTurboGoal: JoyTurboGoal,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  NavigationStatus: NavigationStatus,
  PolarReadingScan: PolarReadingScan,
  VisualLocDB: VisualLocDB,
  Emergency: Emergency,
  Highways: Highways,
  PolarReading: PolarReading,
  LaserImage: LaserImage,
  EulerAngles: EulerAngles,
  TabletPOI: TabletPOI,
  POI: POI,
  POIGroup: POIGroup,
  NiceMapTransformation: NiceMapTransformation,
  MissedWaypoint: MissedWaypoint,
  AvailableMaps: AvailableMaps,
  Waypoint: Waypoint,
  MapConfiguration: MapConfiguration,
  EulerAnglesStamped: EulerAnglesStamped,
  ServiceStatus: ServiceStatus,
};
