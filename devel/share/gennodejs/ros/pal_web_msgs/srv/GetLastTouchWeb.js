// Auto-generated. Do not edit!

// (in-package pal_web_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetLastTouchWebRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLastTouchWebRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLastTouchWebRequest
    let len;
    let data = new GetLastTouchWebRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_web_msgs/GetLastTouchWebRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLastTouchWebRequest(null);
    return resolved;
    }
};

class GetLastTouchWebResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.project = null;
      this.page = null;
    }
    else {
      if (initObj.hasOwnProperty('project')) {
        this.project = initObj.project
      }
      else {
        this.project = '';
      }
      if (initObj.hasOwnProperty('page')) {
        this.page = initObj.page
      }
      else {
        this.page = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLastTouchWebResponse
    // Serialize message field [project]
    bufferOffset = _serializer.string(obj.project, buffer, bufferOffset);
    // Serialize message field [page]
    bufferOffset = _serializer.string(obj.page, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLastTouchWebResponse
    let len;
    let data = new GetLastTouchWebResponse(null);
    // Deserialize message field [project]
    data.project = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [page]
    data.page = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.project);
    length += _getByteLength(object.page);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_web_msgs/GetLastTouchWebResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9395367802b9132f5764b023404f09b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string project
    string page
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLastTouchWebResponse(null);
    if (msg.project !== undefined) {
      resolved.project = msg.project;
    }
    else {
      resolved.project = ''
    }

    if (msg.page !== undefined) {
      resolved.page = msg.page;
    }
    else {
      resolved.page = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetLastTouchWebRequest,
  Response: GetLastTouchWebResponse,
  md5sum() { return 'f9395367802b9132f5764b023404f09b'; },
  datatype() { return 'pal_web_msgs/GetLastTouchWeb'; }
};
