// Auto-generated. Do not edit!

// (in-package pal_web_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Subtitles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.type = null;
      this.new = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('new')) {
        this.new = initObj.new
      }
      else {
        this.new = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Subtitles
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [new]
    bufferOffset = _serializer.bool(obj.new, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Subtitles
    let len;
    let data = new Subtitles(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [new]
    data.new = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    length += _getByteLength(object.type);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_web_msgs/Subtitles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '564a1471f4beddb38c913b4bd30baba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string TTS_TYPE=tts
    string ASR_TYPE=asr
    
    string text
    string type
    bool new
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Subtitles(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.new !== undefined) {
      resolved.new = msg.new;
    }
    else {
      resolved.new = false
    }

    return resolved;
    }
};

// Constants for message
Subtitles.Constants = {
  TTS_TYPE: 'tts',
  ASR_TYPE: 'asr',
}

module.exports = Subtitles;
