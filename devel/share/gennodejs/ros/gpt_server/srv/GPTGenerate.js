// Auto-generated. Do not edit!

// (in-package gpt_server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GPTGenerateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
      this.initialEmotion = null;
      this.finalEmotion = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = '';
      }
      if (initObj.hasOwnProperty('initialEmotion')) {
        this.initialEmotion = initObj.initialEmotion
      }
      else {
        this.initialEmotion = '';
      }
      if (initObj.hasOwnProperty('finalEmotion')) {
        this.finalEmotion = initObj.finalEmotion
      }
      else {
        this.finalEmotion = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPTGenerateRequest
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
    // Serialize message field [initialEmotion]
    bufferOffset = _serializer.string(obj.initialEmotion, buffer, bufferOffset);
    // Serialize message field [finalEmotion]
    bufferOffset = _serializer.string(obj.finalEmotion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPTGenerateRequest
    let len;
    let data = new GPTGenerateRequest(null);
    // Deserialize message field [request]
    data.request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [initialEmotion]
    data.initialEmotion = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [finalEmotion]
    data.finalEmotion = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request);
    length += _getByteLength(object.initialEmotion);
    length += _getByteLength(object.finalEmotion);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gpt_server/GPTGenerateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '977d7afd53a96949311a6417ee08cfe0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string request
    string initialEmotion
    string finalEmotion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPTGenerateRequest(null);
    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = ''
    }

    if (msg.initialEmotion !== undefined) {
      resolved.initialEmotion = msg.initialEmotion;
    }
    else {
      resolved.initialEmotion = ''
    }

    if (msg.finalEmotion !== undefined) {
      resolved.finalEmotion = msg.finalEmotion;
    }
    else {
      resolved.finalEmotion = ''
    }

    return resolved;
    }
};

class GPTGenerateResponse {
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
    // Serializes a message object of type GPTGenerateResponse
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPTGenerateResponse
    let len;
    let data = new GPTGenerateResponse(null);
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
    return 'gpt_server/GPTGenerateResponse';
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
    const resolved = new GPTGenerateResponse(null);
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
  Request: GPTGenerateRequest,
  Response: GPTGenerateResponse,
  md5sum() { return '23074dbdb11e5f7b63cfdeb8e3a318fc'; },
  datatype() { return 'gpt_server/GPTGenerate'; }
};
