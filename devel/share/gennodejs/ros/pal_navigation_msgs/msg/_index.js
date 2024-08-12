
"use strict";

let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let GoToFeedback = require('./GoToFeedback.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let JoyTurboResult = require('./JoyTurboResult.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let GoToResult = require('./GoToResult.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let GoToAction = require('./GoToAction.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let GoToActionResult = require('./GoToActionResult.js');
let GoToGoal = require('./GoToGoal.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let LaserImage = require('./LaserImage.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let POI = require('./POI.js');
let Highways = require('./Highways.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let PolarReading = require('./PolarReading.js');
let AvailableMaps = require('./AvailableMaps.js');
let MapConfiguration = require('./MapConfiguration.js');
let VisualLocDB = require('./VisualLocDB.js');
let Waypoint = require('./Waypoint.js');
let POIGroup = require('./POIGroup.js');
let TabletPOI = require('./TabletPOI.js');
let ServiceStatus = require('./ServiceStatus.js');
let NavigationStatus = require('./NavigationStatus.js');
let MissedWaypoint = require('./MissedWaypoint.js');
let Emergency = require('./Emergency.js');
let EulerAngles = require('./EulerAngles.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');

module.exports = {
  VisualTrainingActionResult: VisualTrainingActionResult,
  GoToPOIActionResult: GoToPOIActionResult,
  JoyPriorityAction: JoyPriorityAction,
  ExecuteParkingAction: ExecuteParkingAction,
  FollowWaypointsResult: FollowWaypointsResult,
  JoyPriorityResult: JoyPriorityResult,
  GoToFeedback: GoToFeedback,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  JoyTurboGoal: JoyTurboGoal,
  JoyTurboActionResult: JoyTurboActionResult,
  VisualTrainingGoal: VisualTrainingGoal,
  JoyPriorityActionResult: JoyPriorityActionResult,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  JoyTurboActionGoal: JoyTurboActionGoal,
  JoyTurboResult: JoyTurboResult,
  GoToActionFeedback: GoToActionFeedback,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  GoToPOIGoal: GoToPOIGoal,
  JoyPriorityFeedback: JoyPriorityFeedback,
  JoyTurboFeedback: JoyTurboFeedback,
  GoToResult: GoToResult,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
  GoToAction: GoToAction,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  GoToPOIFeedback: GoToPOIFeedback,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  GoToPOIAction: GoToPOIAction,
  ExecuteParkingGoal: ExecuteParkingGoal,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  VisualTrainingResult: VisualTrainingResult,
  FollowWaypointsAction: FollowWaypointsAction,
  GoToPOIResult: GoToPOIResult,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  VisualTrainingAction: VisualTrainingAction,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  GoToActionGoal: GoToActionGoal,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  JoyTurboAction: JoyTurboAction,
  GoToPOIActionGoal: GoToPOIActionGoal,
  VisualTrainingFeedback: VisualTrainingFeedback,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  ExecuteParkingResult: ExecuteParkingResult,
  GoToActionResult: GoToActionResult,
  GoToGoal: GoToGoal,
  FollowWaypointsGoal: FollowWaypointsGoal,
  JoyPriorityGoal: JoyPriorityGoal,
  LaserImage: LaserImage,
  EulerAnglesStamped: EulerAnglesStamped,
  POI: POI,
  Highways: Highways,
  PolarReadingScan: PolarReadingScan,
  PolarReading: PolarReading,
  AvailableMaps: AvailableMaps,
  MapConfiguration: MapConfiguration,
  VisualLocDB: VisualLocDB,
  Waypoint: Waypoint,
  POIGroup: POIGroup,
  TabletPOI: TabletPOI,
  ServiceStatus: ServiceStatus,
  NavigationStatus: NavigationStatus,
  MissedWaypoint: MissedWaypoint,
  Emergency: Emergency,
  EulerAngles: EulerAngles,
  NiceMapTransformation: NiceMapTransformation,
};
