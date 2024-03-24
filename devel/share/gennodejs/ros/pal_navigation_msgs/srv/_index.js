
"use strict";

let SafetyZone = require('./SafetyZone.js')
let SaveMap = require('./SaveMap.js')
let GetMapConfiguration = require('./GetMapConfiguration.js')
let ListMaps = require('./ListMaps.js')
let VisualLocRecognize = require('./VisualLocRecognize.js')
let ChangeBuilding = require('./ChangeBuilding.js')
let ChangeSyncMap = require('./ChangeSyncMap.js')
let SetSubMapFloor = require('./SetSubMapFloor.js')
let ChangeMap = require('./ChangeMap.js')
let SetPOI = require('./SetPOI.js')
let DisableEmergency = require('./DisableEmergency.js')
let GetSubMap = require('./GetSubMap.js')
let GetPOI = require('./GetPOI.js')
let RegisterSync = require('./RegisterSync.js')
let GetNodes = require('./GetNodes.js')
let RenameMap = require('./RenameMap.js')
let SetMapConfiguration = require('./SetMapConfiguration.js')
let Acknowledgment = require('./Acknowledgment.js')
let FinalApproachPose = require('./FinalApproachPose.js')

module.exports = {
  SafetyZone: SafetyZone,
  SaveMap: SaveMap,
  GetMapConfiguration: GetMapConfiguration,
  ListMaps: ListMaps,
  VisualLocRecognize: VisualLocRecognize,
  ChangeBuilding: ChangeBuilding,
  ChangeSyncMap: ChangeSyncMap,
  SetSubMapFloor: SetSubMapFloor,
  ChangeMap: ChangeMap,
  SetPOI: SetPOI,
  DisableEmergency: DisableEmergency,
  GetSubMap: GetSubMap,
  GetPOI: GetPOI,
  RegisterSync: RegisterSync,
  GetNodes: GetNodes,
  RenameMap: RenameMap,
  SetMapConfiguration: SetMapConfiguration,
  Acknowledgment: Acknowledgment,
  FinalApproachPose: FinalApproachPose,
};
