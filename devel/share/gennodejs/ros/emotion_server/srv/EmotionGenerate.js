// Auto-generated. Do not edit!

// (in-package emotion_server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class EmotionGenerateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wavPath = null;
      this.videoPath = null;
      this.textPath = null;
    }
    else {
      if (initObj.hasOwnProperty('wavPath')) {
        this.wavPath = initObj.wavPath
      }
      else {
        this.wavPath = '';
      }
      if (initObj.hasOwnProperty('videoPath')) {
        this.videoPath = initObj.videoPath
      }
      else {
        this.videoPath = '';
      }
      if (initObj.hasOwnProperty('textPath')) {
        this.textPath = initObj.textPath
      }
      else {
        this.textPath = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmotionGenerateRequest
    // Serialize message field [wavPath]
    bufferOffset = _serializer.string(obj.wavPath, buffer, bufferOffset);
    // Serialize message field [videoPath]
    bufferOffset = _serializer.string(obj.videoPath, buffer, bufferOffset);
    // Serialize message field [textPath]
    bufferOffset = _serializer.string(obj.textPath, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmotionGenerateRequest
    let len;
    let data = new EmotionGenerateRequest(null);
    // Deserialize message field [wavPath]
    data.wavPath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [videoPath]
    data.videoPath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [textPath]
    data.textPath = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.wavPath);
    length += _getByteLength(object.videoPath);
    length += _getByteLength(object.textPath);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'emotion_server/EmotionGenerateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c7dddfe480c8003a68d59197820d5f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string wavPath
    string videoPath
    string textPath
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmotionGenerateRequest(null);
    if (msg.wavPath !== undefined) {
      resolved.wavPath = msg.wavPath;
    }
    else {
      resolved.wavPath = ''
    }

    if (msg.videoPath !== undefined) {
      resolved.videoPath = msg.videoPath;
    }
    else {
      resolved.videoPath = ''
    }

    if (msg.textPath !== undefined) {
      resolved.textPath = msg.textPath;
    }
    else {
      resolved.textPath = ''
    }

    return resolved;
    }
};

class EmotionGenerateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmotionGenerateResponse
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmotionGenerateResponse
    let len;
    let data = new EmotionGenerateResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.response);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'emotion_server/EmotionGenerateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6de314e2dc76fbff2b6244a6ad70b68d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmotionGenerateResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: EmotionGenerateRequest,
  Response: EmotionGenerateResponse,
  md5sum() { return '82bcd62a338b6421f3f91564dfc93990'; },
  datatype() { return 'emotion_server/EmotionGenerate'; }
};
