
"use strict";

let GetSpeechDuration = require('./GetSpeechDuration.js')
let recognizerService = require('./recognizerService.js')
let SoundLocalisationService = require('./SoundLocalisationService.js')
let ASRService = require('./ASRService.js')

module.exports = {
  GetSpeechDuration: GetSpeechDuration,
  recognizerService: recognizerService,
  SoundLocalisationService: SoundLocalisationService,
  ASRService: ASRService,
};
