# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hri_actions_msgs/LookAtWithStyle.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class LookAtWithStyle(genpy.Message):
  _md5sum = "1997f720101069b0d5f7306d6cb70706"
  _type = "hri_actions_msgs/LookAtWithStyle"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Specify the target of the robot's gaze as a 3D point. A desired 'style'
# policy can be specified to control how the gaze motion should be executed
# (for instance, sudden movement, slow shift, etc.)

# default policy: both eyes and head joints (eg neck) are used, the resulting
# 'style' is a smooth combination of both
int8 DEFAULT = 0

# eyes-only policy: only the eyes (if available) should move
int8 EYES_ONLY = 1

# head-only policy: only the head joints (typically, the neck) should move
int8 HEAD_ONLY = 2

int8 style

geometry_msgs/PointStamped target

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  # Pseudo-constants
  DEFAULT = 0
  EYES_ONLY = 1
  HEAD_ONLY = 2

  __slots__ = ['style','target']
  _slot_types = ['int8','geometry_msgs/PointStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       style,target

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LookAtWithStyle, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.style is None:
        self.style = 0
      if self.target is None:
        self.target = geometry_msgs.msg.PointStamped()
    else:
      self.style = 0
      self.target = geometry_msgs.msg.PointStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_b3I().pack(_x.style, _x.target.header.seq, _x.target.header.stamp.secs, _x.target.header.stamp.nsecs))
      _x = self.target.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.target.point.x, _x.target.point.y, _x.target.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.target is None:
        self.target = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.style, _x.target.header.seq, _x.target.header.stamp.secs, _x.target.header.stamp.nsecs,) = _get_struct_b3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.target.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.target.point.x, _x.target.point.y, _x.target.point.z,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_b3I().pack(_x.style, _x.target.header.seq, _x.target.header.stamp.secs, _x.target.header.stamp.nsecs))
      _x = self.target.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.target.point.x, _x.target.point.y, _x.target.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.target is None:
        self.target = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.style, _x.target.header.seq, _x.target.header.stamp.secs, _x.target.header.stamp.nsecs,) = _get_struct_b3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.target.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.target.point.x, _x.target.point.y, _x.target.point.z,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_b3I = None
def _get_struct_b3I():
    global _struct_b3I
    if _struct_b3I is None:
        _struct_b3I = struct.Struct("<b3I")
    return _struct_b3I
