
"use strict";

let recognizerService = require('./recognizerService.js')
let GetSpeechDuration = require('./GetSpeechDuration.js')
let SoundLocalisationService = require('./SoundLocalisationService.js')
let ASRService = require('./ASRService.js')

module.exports = {
  recognizerService: recognizerService,
  GetSpeechDuration: GetSpeechDuration,
  SoundLocalisationService: SoundLocalisationService,
  ASRService: ASRService,
};
