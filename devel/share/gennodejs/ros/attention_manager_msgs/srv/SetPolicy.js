// Auto-generated. Do not edit!

// (in-package attention_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPolicyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.policy = null;
      this.frame = null;
    }
    else {
      if (initObj.hasOwnProperty('policy')) {
        this.policy = initObj.policy
      }
      else {
        this.policy = 0;
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPolicyRequest
    // Serialize message field [policy]
    bufferOffset = _serializer.int8(obj.policy, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.string(obj.frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPolicyRequest
    let len;
    let data = new SetPolicyRequest(null);
    // Deserialize message field [policy]
    data.policy = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'attention_manager_msgs/SetPolicyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd986eb9213a50852c4f5cc8e18a7f55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the attention manager will not control the robot's focus of attention
    int8 DISABLED=0
    
    # randomly look around, with short fixations
    int8 RANDOM=1
    
    # the robot will look around for faces, with fixations on detected faces
    int8 IDLE_SOCIAL=2
    
    # focus the robot's attention on a specific frame (typically, a person),
    # provided as the `frame` parameter. If not `frame` parameter is set, the
    # attention manager will focus on the last tracked frame (if any)
    int8 FOCUSED_SOCIAL=3
    
    string STATUS=status
    
    int8 policy
    
    # only used for policies that expect a specific focus on attention
    string frame
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPolicyRequest(null);
    if (msg.policy !== undefined) {
      resolved.policy = msg.policy;
    }
    else {
      resolved.policy = 0
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = ''
    }

    return resolved;
    }
};

// Constants for message
SetPolicyRequest.Constants = {
  DISABLED: 0,
  RANDOM: 1,
  IDLE_SOCIAL: 2,
  FOCUSED_SOCIAL: 3,
  STATUS: 'status',
}

class SetPolicyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPolicyResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPolicyResponse
    let len;
    let data = new SetPolicyResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_msg);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'attention_manager_msgs/SetPolicyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd006c48be24db1173a071ca9af4c8179';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Result:
    
    # true if the action was successfully performed
    bool success
    
    # if success = False, error_msg might contain additional information about the
    # failure.
    string error_msg
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPolicyResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetPolicyRequest,
  Response: SetPolicyResponse,
  md5sum() { return '0f86d129016b02b119d57fd98d1af8fc'; },
  datatype() { return 'attention_manager_msgs/SetPolicy'; }
};
