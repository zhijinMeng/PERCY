
"use strict";

let SaveMap = require('./SaveMap.js')
let SetSubMapFloor = require('./SetSubMapFloor.js')
let ListMaps = require('./ListMaps.js')
let GetNodes = require('./GetNodes.js')
let VisualLocRecognize = require('./VisualLocRecognize.js')
let FinalApproachPose = require('./FinalApproachPose.js')
let ChangeBuilding = require('./ChangeBuilding.js')
let ChangeMap = require('./ChangeMap.js')
let SafetyZone = require('./SafetyZone.js')
let GetPOI = require('./GetPOI.js')
let DisableEmergency = require('./DisableEmergency.js')
let SetPOI = require('./SetPOI.js')
let GetSubMap = require('./GetSubMap.js')
let RegisterSync = require('./RegisterSync.js')
let SetMapConfiguration = require('./SetMapConfiguration.js')
let Acknowledgment = require('./Acknowledgment.js')
let ChangeSyncMap = require('./ChangeSyncMap.js')
let GetMapConfiguration = require('./GetMapConfiguration.js')
let RenameMap = require('./RenameMap.js')

module.exports = {
  SaveMap: SaveMap,
  SetSubMapFloor: SetSubMapFloor,
  ListMaps: ListMaps,
  GetNodes: GetNodes,
  VisualLocRecognize: VisualLocRecognize,
  FinalApproachPose: FinalApproachPose,
  ChangeBuilding: ChangeBuilding,
  ChangeMap: ChangeMap,
  SafetyZone: SafetyZone,
  GetPOI: GetPOI,
  DisableEmergency: DisableEmergency,
  SetPOI: SetPOI,
  GetSubMap: GetSubMap,
  RegisterSync: RegisterSync,
  SetMapConfiguration: SetMapConfiguration,
  Acknowledgment: Acknowledgment,
  ChangeSyncMap: ChangeSyncMap,
  GetMapConfiguration: GetMapConfiguration,
  RenameMap: RenameMap,
};
