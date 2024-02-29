
"use strict";

let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let GoToActionResult = require('./GoToActionResult.js');
let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let GoToResult = require('./GoToResult.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let GoToAction = require('./GoToAction.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let GoToFeedback = require('./GoToFeedback.js');
let GoToGoal = require('./GoToGoal.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let JoyTurboResult = require('./JoyTurboResult.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let Emergency = require('./Emergency.js');
let LaserImage = require('./LaserImage.js');
let AvailableMaps = require('./AvailableMaps.js');
let POI = require('./POI.js');
let PolarReading = require('./PolarReading.js');
let POIGroup = require('./POIGroup.js');
let ServiceStatus = require('./ServiceStatus.js');
let TabletPOI = require('./TabletPOI.js');
let Waypoint = require('./Waypoint.js');
let EulerAngles = require('./EulerAngles.js');
let MapConfiguration = require('./MapConfiguration.js');
let MissedWaypoint = require('./MissedWaypoint.js');
let NavigationStatus = require('./NavigationStatus.js');
let VisualLocDB = require('./VisualLocDB.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');
let Highways = require('./Highways.js');

module.exports = {
  GoToPOIActionResult: GoToPOIActionResult,
  GoToActionFeedback: GoToActionFeedback,
  FollowWaypointsAction: FollowWaypointsAction,
  JoyTurboActionResult: JoyTurboActionResult,
  VisualTrainingAction: VisualTrainingAction,
  JoyTurboFeedback: JoyTurboFeedback,
  JoyTurboActionGoal: JoyTurboActionGoal,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  FollowWaypointsGoal: FollowWaypointsGoal,
  GoToActionResult: GoToActionResult,
  VisualTrainingFeedback: VisualTrainingFeedback,
  GoToPOIActionGoal: GoToPOIActionGoal,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  JoyTurboAction: JoyTurboAction,
  ExecuteParkingAction: ExecuteParkingAction,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  VisualTrainingActionResult: VisualTrainingActionResult,
  JoyPriorityGoal: JoyPriorityGoal,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  GoToResult: GoToResult,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  GoToPOIResult: GoToPOIResult,
  JoyPriorityActionResult: JoyPriorityActionResult,
  GoToAction: GoToAction,
  JoyTurboGoal: JoyTurboGoal,
  JoyPriorityAction: JoyPriorityAction,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  GoToPOIFeedback: GoToPOIFeedback,
  GoToActionGoal: GoToActionGoal,
  FollowWaypointsResult: FollowWaypointsResult,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  GoToFeedback: GoToFeedback,
  GoToGoal: GoToGoal,
  JoyPriorityFeedback: JoyPriorityFeedback,
  VisualTrainingGoal: VisualTrainingGoal,
  JoyPriorityResult: JoyPriorityResult,
  ExecuteParkingGoal: ExecuteParkingGoal,
  ExecuteParkingResult: ExecuteParkingResult,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  JoyTurboResult: JoyTurboResult,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
  GoToPOIAction: GoToPOIAction,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  GoToPOIGoal: GoToPOIGoal,
  VisualTrainingResult: VisualTrainingResult,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  PolarReadingScan: PolarReadingScan,
  EulerAnglesStamped: EulerAnglesStamped,
  Emergency: Emergency,
  LaserImage: LaserImage,
  AvailableMaps: AvailableMaps,
  POI: POI,
  PolarReading: PolarReading,
  POIGroup: POIGroup,
  ServiceStatus: ServiceStatus,
  TabletPOI: TabletPOI,
  Waypoint: Waypoint,
  EulerAngles: EulerAngles,
  MapConfiguration: MapConfiguration,
  MissedWaypoint: MissedWaypoint,
  NavigationStatus: NavigationStatus,
  VisualLocDB: VisualLocDB,
  NiceMapTransformation: NiceMapTransformation,
  Highways: Highways,
};
