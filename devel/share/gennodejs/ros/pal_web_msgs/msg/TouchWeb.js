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

class TouchWeb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.touch_web = null;
      this.touch_project = null;
      this.parameters = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('touch_web')) {
        this.touch_web = initObj.touch_web
      }
      else {
        this.touch_web = '';
      }
      if (initObj.hasOwnProperty('touch_project')) {
        this.touch_project = initObj.touch_project
      }
      else {
        this.touch_project = '';
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TouchWeb
    // Serialize message field [touch_web]
    bufferOffset = _serializer.string(obj.touch_web, buffer, bufferOffset);
    // Serialize message field [touch_project]
    bufferOffset = _serializer.string(obj.touch_project, buffer, bufferOffset);
    // Serialize message field [parameters]
    bufferOffset = _serializer.string(obj.parameters, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TouchWeb
    let len;
    let data = new TouchWeb(null);
    // Deserialize message field [touch_web]
    data.touch_web = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [touch_project]
    data.touch_project = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameters]
    data.parameters = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.touch_web);
    length += _getByteLength(object.touch_project);
    length += _getByteLength(object.parameters);
    length += _getByteLength(object.message);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_web_msgs/TouchWeb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5d87a5338aad48717af83218b03759b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string touch_web
    string touch_project
    string parameters
    
    # Optional fields for error messages
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TouchWeb(null);
    if (msg.touch_web !== undefined) {
      resolved.touch_web = msg.touch_web;
    }
    else {
      resolved.touch_web = ''
    }

    if (msg.touch_project !== undefined) {
      resolved.touch_project = msg.touch_project;
    }
    else {
      resolved.touch_project = ''
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = msg.parameters;
    }
    else {
      resolved.parameters = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = TouchWeb;
