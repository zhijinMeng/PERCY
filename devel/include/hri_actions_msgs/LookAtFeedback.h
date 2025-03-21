// Generated by gencpp from file hri_actions_msgs/LookAtFeedback.msg
// DO NOT EDIT!


#ifndef HRI_ACTIONS_MSGS_MESSAGE_LOOKATFEEDBACK_H
#define HRI_ACTIONS_MSGS_MESSAGE_LOOKATFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hri_actions_msgs
{
template <class ContainerAllocator>
struct LookAtFeedback_
{
  typedef LookAtFeedback_<ContainerAllocator> Type;

  LookAtFeedback_()
    {
    }
  LookAtFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct LookAtFeedback_

typedef ::hri_actions_msgs::LookAtFeedback_<std::allocator<void> > LookAtFeedback;

typedef boost::shared_ptr< ::hri_actions_msgs::LookAtFeedback > LookAtFeedbackPtr;
typedef boost::shared_ptr< ::hri_actions_msgs::LookAtFeedback const> LookAtFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace hri_actions_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hri_actions_msgs/LookAtFeedback";
  }

  static const char* value(const ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
;
  }

  static const char* value(const ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LookAtFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::hri_actions_msgs::LookAtFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // HRI_ACTIONS_MSGS_MESSAGE_LOOKATFEEDBACK_H
