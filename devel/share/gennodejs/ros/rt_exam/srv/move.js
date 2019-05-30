// Auto-generated. Do not edit!

// (in-package rt_exam.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class moveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seconds = null;
      this.radian = null;
    }
    else {
      if (initObj.hasOwnProperty('seconds')) {
        this.seconds = initObj.seconds
      }
      else {
        this.seconds = 0;
      }
      if (initObj.hasOwnProperty('radian')) {
        this.radian = initObj.radian
      }
      else {
        this.radian = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moveRequest
    // Serialize message field [seconds]
    bufferOffset = _serializer.int64(obj.seconds, buffer, bufferOffset);
    // Serialize message field [radian]
    bufferOffset = _serializer.int64(obj.radian, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moveRequest
    let len;
    let data = new moveRequest(null);
    // Deserialize message field [seconds]
    data.seconds = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [radian]
    data.radian = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_exam/moveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '784f09e13954265156e209263daa5991';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 seconds
    int64 radian
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moveRequest(null);
    if (msg.seconds !== undefined) {
      resolved.seconds = msg.seconds;
    }
    else {
      resolved.seconds = 0
    }

    if (msg.radian !== undefined) {
      resolved.radian = msg.radian;
    }
    else {
      resolved.radian = 0
    }

    return resolved;
    }
};

class moveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum = null;
    }
    else {
      if (initObj.hasOwnProperty('sum')) {
        this.sum = initObj.sum
      }
      else {
        this.sum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moveResponse
    // Serialize message field [sum]
    bufferOffset = _serializer.int64(obj.sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moveResponse
    let len;
    let data = new moveResponse(null);
    // Deserialize message field [sum]
    data.sum = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_exam/moveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b88405221c77b1878a3cbbfff53428d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sum
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moveResponse(null);
    if (msg.sum !== undefined) {
      resolved.sum = msg.sum;
    }
    else {
      resolved.sum = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: moveRequest,
  Response: moveResponse,
  md5sum() { return 'f2967bca72e0c3d566283af10d69c6aa'; },
  datatype() { return 'rt_exam/move'; }
};
