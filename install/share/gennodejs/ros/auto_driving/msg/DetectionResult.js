// Auto-generated. Do not edit!

// (in-package auto_driving.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DetectionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.country = null;
      this.product_id = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('country')) {
        this.country = initObj.country
      }
      else {
        this.country = '';
      }
      if (initObj.hasOwnProperty('product_id')) {
        this.product_id = initObj.product_id
      }
      else {
        this.product_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionResult
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [country]
    bufferOffset = _serializer.string(obj.country, buffer, bufferOffset);
    // Serialize message field [product_id]
    bufferOffset = _serializer.uint8(obj.product_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionResult
    let len;
    let data = new DetectionResult(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [country]
    data.country = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [product_id]
    data.product_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += object.country.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_driving/DetectionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77a2470f91f15b079bebc4e6c7b62731';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name
    string country
    uint8 product_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectionResult(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.country !== undefined) {
      resolved.country = msg.country;
    }
    else {
      resolved.country = ''
    }

    if (msg.product_id !== undefined) {
      resolved.product_id = msg.product_id;
    }
    else {
      resolved.product_id = 0
    }

    return resolved;
    }
};

module.exports = DetectionResult;
