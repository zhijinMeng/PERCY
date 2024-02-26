
"use strict";

let recognizerService = require('./recognizerService.js')
let ASRService = require('./ASRService.js')
let SoundLocalisationService = require('./SoundLocalisationService.js')
let GetSpeechDuration = require('./GetSpeechDuration.js')

module.exports = {
  recognizerService: recognizerService,
  ASRService: ASRService,
  SoundLocalisationService: SoundLocalisationService,
  GetSpeechDuration: GetSpeechDuration,
};
