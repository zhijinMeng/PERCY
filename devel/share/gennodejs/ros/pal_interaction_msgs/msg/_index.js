
"use strict";

let audiosignal = require('./audiosignal.js');
let Input = require('./Input.js');
let ASRSrvRequest = require('./ASRSrvRequest.js');
let ASRActivation = require('./ASRActivation.js');
let ASREvent = require('./ASREvent.js');
let EnablingSoundLocalisation = require('./EnablingSoundLocalisation.js');
let DirectionOfArrival = require('./DirectionOfArrival.js');
let actiontag = require('./actiontag.js');
let ASRSrvResponse = require('./ASRSrvResponse.js');
let ASRLangModelMngmt = require('./ASRLangModelMngmt.js');
let TTSstate = require('./TTSstate.js');
let VoiceActivity = require('./VoiceActivity.js');
let TtsMark = require('./TtsMark.js');
let I18nArgument = require('./I18nArgument.js');
let asrresult = require('./asrresult.js');
let TtsText = require('./TtsText.js');
let I18nText = require('./I18nText.js');
let AudioDeviceDescription = require('./AudioDeviceDescription.js');
let WebGuiEvent = require('./WebGuiEvent.js');
let InputArgument = require('./InputArgument.js');
let asrupdate = require('./asrupdate.js');
let AudioPlayerState = require('./AudioPlayerState.js');
let ASRStatus = require('./ASRStatus.js');
let ASRLanguage = require('./ASRLanguage.js');
let ASRFileGoal = require('./ASRFileGoal.js');
let AudioPlayActionResult = require('./AudioPlayActionResult.js');
let TtsActionFeedback = require('./TtsActionFeedback.js');
let AudioPlayResult = require('./AudioPlayResult.js');
let SoundActionGoal = require('./SoundActionGoal.js');
let AudioPlayActionFeedback = require('./AudioPlayActionFeedback.js');
let TtsActionResult = require('./TtsActionResult.js');
let SoundFeedback = require('./SoundFeedback.js');
let ASRFileActionFeedback = require('./ASRFileActionFeedback.js');
let ASRFileActionResult = require('./ASRFileActionResult.js');
let TtsAction = require('./TtsAction.js');
let TtsActionGoal = require('./TtsActionGoal.js');
let AudioPlayAction = require('./AudioPlayAction.js');
let TtsResult = require('./TtsResult.js');
let ASRFileResult = require('./ASRFileResult.js');
let ASRFileActionGoal = require('./ASRFileActionGoal.js');
let SoundAction = require('./SoundAction.js');
let SoundActionFeedback = require('./SoundActionFeedback.js');
let AudioPlayFeedback = require('./AudioPlayFeedback.js');
let TtsGoal = require('./TtsGoal.js');
let SoundResult = require('./SoundResult.js');
let ASRFileFeedback = require('./ASRFileFeedback.js');
let AudioPlayGoal = require('./AudioPlayGoal.js');
let TtsFeedback = require('./TtsFeedback.js');
let ASRFileAction = require('./ASRFileAction.js');
let SoundGoal = require('./SoundGoal.js');
let AudioPlayActionGoal = require('./AudioPlayActionGoal.js');
let SoundActionResult = require('./SoundActionResult.js');

module.exports = {
  audiosignal: audiosignal,
  Input: Input,
  ASRSrvRequest: ASRSrvRequest,
  ASRActivation: ASRActivation,
  ASREvent: ASREvent,
  EnablingSoundLocalisation: EnablingSoundLocalisation,
  DirectionOfArrival: DirectionOfArrival,
  actiontag: actiontag,
  ASRSrvResponse: ASRSrvResponse,
  ASRLangModelMngmt: ASRLangModelMngmt,
  TTSstate: TTSstate,
  VoiceActivity: VoiceActivity,
  TtsMark: TtsMark,
  I18nArgument: I18nArgument,
  asrresult: asrresult,
  TtsText: TtsText,
  I18nText: I18nText,
  AudioDeviceDescription: AudioDeviceDescription,
  WebGuiEvent: WebGuiEvent,
  InputArgument: InputArgument,
  asrupdate: asrupdate,
  AudioPlayerState: AudioPlayerState,
  ASRStatus: ASRStatus,
  ASRLanguage: ASRLanguage,
  ASRFileGoal: ASRFileGoal,
  AudioPlayActionResult: AudioPlayActionResult,
  TtsActionFeedback: TtsActionFeedback,
  AudioPlayResult: AudioPlayResult,
  SoundActionGoal: SoundActionGoal,
  AudioPlayActionFeedback: AudioPlayActionFeedback,
  TtsActionResult: TtsActionResult,
  SoundFeedback: SoundFeedback,
  ASRFileActionFeedback: ASRFileActionFeedback,
  ASRFileActionResult: ASRFileActionResult,
  TtsAction: TtsAction,
  TtsActionGoal: TtsActionGoal,
  AudioPlayAction: AudioPlayAction,
  TtsResult: TtsResult,
  ASRFileResult: ASRFileResult,
  ASRFileActionGoal: ASRFileActionGoal,
  SoundAction: SoundAction,
  SoundActionFeedback: SoundActionFeedback,
  AudioPlayFeedback: AudioPlayFeedback,
  TtsGoal: TtsGoal,
  SoundResult: SoundResult,
  ASRFileFeedback: ASRFileFeedback,
  AudioPlayGoal: AudioPlayGoal,
  TtsFeedback: TtsFeedback,
  ASRFileAction: ASRFileAction,
  SoundGoal: SoundGoal,
  AudioPlayActionGoal: AudioPlayActionGoal,
  SoundActionResult: SoundActionResult,
};
