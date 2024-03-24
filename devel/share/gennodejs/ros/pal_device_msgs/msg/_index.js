
"use strict";

let Bumper = require('./Bumper.js');
let LedEffectParams = require('./LedEffectParams.js');
let LedDataArrayParams = require('./LedDataArrayParams.js');
let LedRainbowParams = require('./LedRainbowParams.js');
let LedPreProgrammedParams = require('./LedPreProgrammedParams.js');
let LedBlinkParams = require('./LedBlinkParams.js');
let LedFixedColorParams = require('./LedFixedColorParams.js');
let LedEffectViaTopicParams = require('./LedEffectViaTopicParams.js');
let LedGroup = require('./LedGroup.js');
let LedFlowParams = require('./LedFlowParams.js');
let BatteryState = require('./BatteryState.js');
let LedFadeParams = require('./LedFadeParams.js');
let LedProgressParams = require('./LedProgressParams.js');
let DoTimedLedEffectResult = require('./DoTimedLedEffectResult.js');
let DoTimedLedEffectAction = require('./DoTimedLedEffectAction.js');
let DoTimedLedEffectFeedback = require('./DoTimedLedEffectFeedback.js');
let DoTimedLedEffectActionFeedback = require('./DoTimedLedEffectActionFeedback.js');
let DoTimedLedEffectActionGoal = require('./DoTimedLedEffectActionGoal.js');
let DoTimedLedEffectGoal = require('./DoTimedLedEffectGoal.js');
let DoTimedLedEffectActionResult = require('./DoTimedLedEffectActionResult.js');

module.exports = {
  Bumper: Bumper,
  LedEffectParams: LedEffectParams,
  LedDataArrayParams: LedDataArrayParams,
  LedRainbowParams: LedRainbowParams,
  LedPreProgrammedParams: LedPreProgrammedParams,
  LedBlinkParams: LedBlinkParams,
  LedFixedColorParams: LedFixedColorParams,
  LedEffectViaTopicParams: LedEffectViaTopicParams,
  LedGroup: LedGroup,
  LedFlowParams: LedFlowParams,
  BatteryState: BatteryState,
  LedFadeParams: LedFadeParams,
  LedProgressParams: LedProgressParams,
  DoTimedLedEffectResult: DoTimedLedEffectResult,
  DoTimedLedEffectAction: DoTimedLedEffectAction,
  DoTimedLedEffectFeedback: DoTimedLedEffectFeedback,
  DoTimedLedEffectActionFeedback: DoTimedLedEffectActionFeedback,
  DoTimedLedEffectActionGoal: DoTimedLedEffectActionGoal,
  DoTimedLedEffectGoal: DoTimedLedEffectGoal,
  DoTimedLedEffectActionResult: DoTimedLedEffectActionResult,
};
