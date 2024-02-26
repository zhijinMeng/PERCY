
"use strict";

let ChangeMap = require('./ChangeMap.js')
let ChangeSyncMap = require('./ChangeSyncMap.js')
let RenameMap = require('./RenameMap.js')
let SetSubMapFloor = require('./SetSubMapFloor.js')
let SafetyZone = require('./SafetyZone.js')
let DisableEmergency = require('./DisableEmergency.js')
let RegisterSync = require('./RegisterSync.js')
let ListMaps = require('./ListMaps.js')
let GetPOI = require('./GetPOI.js')
let SetPOI = require('./SetPOI.js')
let Acknowledgment = require('./Acknowledgment.js')
let GetMapConfiguration = require('./GetMapConfiguration.js')
let SetMapConfiguration = require('./SetMapConfiguration.js')
let SaveMap = require('./SaveMap.js')
let GetSubMap = require('./GetSubMap.js')
let ChangeBuilding = require('./ChangeBuilding.js')
let VisualLocRecognize = require('./VisualLocRecognize.js')
let FinalApproachPose = require('./FinalApproachPose.js')
let GetNodes = require('./GetNodes.js')

module.exports = {
  ChangeMap: ChangeMap,
  ChangeSyncMap: ChangeSyncMap,
  RenameMap: RenameMap,
  SetSubMapFloor: SetSubMapFloor,
  SafetyZone: SafetyZone,
  DisableEmergency: DisableEmergency,
  RegisterSync: RegisterSync,
  ListMaps: ListMaps,
  GetPOI: GetPOI,
  SetPOI: SetPOI,
  Acknowledgment: Acknowledgment,
  GetMapConfiguration: GetMapConfiguration,
  SetMapConfiguration: SetMapConfiguration,
  SaveMap: SaveMap,
  GetSubMap: GetSubMap,
  ChangeBuilding: ChangeBuilding,
  VisualLocRecognize: VisualLocRecognize,
  FinalApproachPose: FinalApproachPose,
  GetNodes: GetNodes,
};
