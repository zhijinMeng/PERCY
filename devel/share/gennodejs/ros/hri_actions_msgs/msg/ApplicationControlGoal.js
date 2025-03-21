// Auto-generated. Do not edit!

// (in-package hri_actions_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ApplicationControlGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApplicationControlGoal
    // Serialize message field [parameters]
    bufferOffset = _serializer.string(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApplicationControlGoal
    let len;
    let data = new ApplicationControlGoal(null);
    // Deserialize message field [parameters]
    data.parameters = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.parameters);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_actions_msgs/ApplicationControlGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b96cd7929ab82d8413ba620379c440ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # an (optional) JSON-encoded string passed to the underlying application
    # controller.
    string parameters
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApplicationControlGoal(null);
    if (msg.parameters !== undefined) {
      resolved.parameters = msg.parameters;
    }
    else {
      resolved.parameters = ''
    }

    return resolved;
    }
};

module.exports = ApplicationControlGoal;
