
"use strict";

let JoyTurboResult = require('./JoyTurboResult.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let GoToGoal = require('./GoToGoal.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let GoToFeedback = require('./GoToFeedback.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let GoToResult = require('./GoToResult.js');
let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let GoToAction = require('./GoToAction.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let GoToActionResult = require('./GoToActionResult.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let EulerAngles = require('./EulerAngles.js');
let ServiceStatus = require('./ServiceStatus.js');
let LaserImage = require('./LaserImage.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');
let PolarReading = require('./PolarReading.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let POI = require('./POI.js');
let Emergency = require('./Emergency.js');
let TabletPOI = require('./TabletPOI.js');
let POIGroup = require('./POIGroup.js');
let Waypoint = require('./Waypoint.js');
let Highways = require('./Highways.js');
let AvailableMaps = require('./AvailableMaps.js');
let VisualLocDB = require('./VisualLocDB.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let MissedWaypoint = require('./MissedWaypoint.js');
let NavigationStatus = require('./NavigationStatus.js');
let MapConfiguration = require('./MapConfiguration.js');

module.exports = {
  JoyTurboResult: JoyTurboResult,
  JoyPriorityAction: JoyPriorityAction,
  JoyTurboAction: JoyTurboAction,
  JoyPriorityFeedback: JoyPriorityFeedback,
  JoyPriorityResult: JoyPriorityResult,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  GoToPOIResult: GoToPOIResult,
  ExecuteParkingResult: ExecuteParkingResult,
  GoToGoal: GoToGoal,
  FollowWaypointsResult: FollowWaypointsResult,
  GoToFeedback: GoToFeedback,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  FollowWaypointsAction: FollowWaypointsAction,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  JoyTurboActionResult: JoyTurboActionResult,
  GoToPOIGoal: GoToPOIGoal,
  VisualTrainingGoal: VisualTrainingGoal,
  VisualTrainingFeedback: VisualTrainingFeedback,
  GoToActionFeedback: GoToActionFeedback,
  JoyPriorityGoal: JoyPriorityGoal,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  JoyTurboFeedback: JoyTurboFeedback,
  JoyTurboGoal: JoyTurboGoal,
  GoToPOIActionResult: GoToPOIActionResult,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  VisualTrainingAction: VisualTrainingAction,
  ExecuteParkingGoal: ExecuteParkingGoal,
  JoyTurboActionGoal: JoyTurboActionGoal,
  GoToPOIAction: GoToPOIAction,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  FollowWaypointsGoal: FollowWaypointsGoal,
  VisualTrainingResult: VisualTrainingResult,
  GoToResult: GoToResult,
  VisualTrainingActionResult: VisualTrainingActionResult,
  GoToPOIActionGoal: GoToPOIActionGoal,
  GoToAction: GoToAction,
  GoToPOIFeedback: GoToPOIFeedback,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  ExecuteParkingAction: ExecuteParkingAction,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  JoyPriorityActionResult: JoyPriorityActionResult,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  GoToActionResult: GoToActionResult,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
  GoToActionGoal: GoToActionGoal,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  EulerAngles: EulerAngles,
  ServiceStatus: ServiceStatus,
  LaserImage: LaserImage,
  NiceMapTransformation: NiceMapTransformation,
  PolarReading: PolarReading,
  EulerAnglesStamped: EulerAnglesStamped,
  POI: POI,
  Emergency: Emergency,
  TabletPOI: TabletPOI,
  POIGroup: POIGroup,
  Waypoint: Waypoint,
  Highways: Highways,
  AvailableMaps: AvailableMaps,
  VisualLocDB: VisualLocDB,
  PolarReadingScan: PolarReadingScan,
  MissedWaypoint: MissedWaypoint,
  NavigationStatus: NavigationStatus,
  MapConfiguration: MapConfiguration,
};
