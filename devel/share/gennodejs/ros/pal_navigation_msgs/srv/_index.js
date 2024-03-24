
"use strict";

let Acknowledgment = require('./Acknowledgment.js')
let ChangeMap = require('./ChangeMap.js')
let SaveMap = require('./SaveMap.js')
let RenameMap = require('./RenameMap.js')
let FinalApproachPose = require('./FinalApproachPose.js')
let SafetyZone = require('./SafetyZone.js')
let RegisterSync = require('./RegisterSync.js')
let GetPOI = require('./GetPOI.js')
let DisableEmergency = require('./DisableEmergency.js')
let GetSubMap = require('./GetSubMap.js')
let ListMaps = require('./ListMaps.js')
let GetNodes = require('./GetNodes.js')
let SetMapConfiguration = require('./SetMapConfiguration.js')
let GetMapConfiguration = require('./GetMapConfiguration.js')
let SetPOI = require('./SetPOI.js')
let ChangeSyncMap = require('./ChangeSyncMap.js')
let VisualLocRecognize = require('./VisualLocRecognize.js')
let ChangeBuilding = require('./ChangeBuilding.js')
let SetSubMapFloor = require('./SetSubMapFloor.js')

module.exports = {
  Acknowledgment: Acknowledgment,
  ChangeMap: ChangeMap,
  SaveMap: SaveMap,
  RenameMap: RenameMap,
  FinalApproachPose: FinalApproachPose,
  SafetyZone: SafetyZone,
  RegisterSync: RegisterSync,
  GetPOI: GetPOI,
  DisableEmergency: DisableEmergency,
  GetSubMap: GetSubMap,
  ListMaps: ListMaps,
  GetNodes: GetNodes,
  SetMapConfiguration: SetMapConfiguration,
  GetMapConfiguration: GetMapConfiguration,
  SetPOI: SetPOI,
  ChangeSyncMap: ChangeSyncMap,
  VisualLocRecognize: VisualLocRecognize,
  ChangeBuilding: ChangeBuilding,
  SetSubMapFloor: SetSubMapFloor,
};
