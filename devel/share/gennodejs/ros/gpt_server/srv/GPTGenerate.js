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
      this.manual_mode = null;
      this.is_question = null;
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
      if (initObj.hasOwnProperty('manual_mode')) {
        this.manual_mode = initObj.manual_mode
      }
      else {
        this.manual_mode = false;
      }
      if (initObj.hasOwnProperty('is_question')) {
        this.is_question = initObj.is_question
      }
      else {
        this.is_question = false;
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
    // Serialize message field [manual_mode]
    bufferOffset = _serializer.bool(obj.manual_mode, buffer, bufferOffset);
    // Serialize message field [is_question]
    bufferOffset = _serializer.bool(obj.is_question, buffer, bufferOffset);
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
    // Deserialize message field [manual_mode]
    data.manual_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_question]
    data.is_question = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request);
    length += _getByteLength(object.initialEmotion);
    length += _getByteLength(object.finalEmotion);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gpt_server/GPTGenerateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5b277fc72b6d2919614566329f615d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string request
    string initialEmotion
    string finalEmotion
    bool manual_mode
    bool is_question
    
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

    if (msg.manual_mode !== undefined) {
      resolved.manual_mode = msg.manual_mode;
    }
    else {
      resolved.manual_mode = false
    }

    if (msg.is_question !== undefined) {
      resolved.is_question = msg.is_question;
    }
    else {
      resolved.is_question = false
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
  md5sum() { return '6a3016ec943c4b1e9b46a9b5305c9cf6'; },
  datatype() { return 'gpt_server/GPTGenerate'; }
};
