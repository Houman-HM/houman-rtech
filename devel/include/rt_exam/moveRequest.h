// Generated by gencpp from file rt_exam/moveRequest.msg
// DO NOT EDIT!


#ifndef RT_EXAM_MESSAGE_MOVEREQUEST_H
#define RT_EXAM_MESSAGE_MOVEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rt_exam
{
template <class ContainerAllocator>
struct moveRequest_
{
  typedef moveRequest_<ContainerAllocator> Type;

  moveRequest_()
    : seconds(0)
    , radian(0)  {
    }
  moveRequest_(const ContainerAllocator& _alloc)
    : seconds(0)
    , radian(0)  {
  (void)_alloc;
    }



   typedef int64_t _seconds_type;
  _seconds_type seconds;

   typedef int64_t _radian_type;
  _radian_type radian;





  typedef boost::shared_ptr< ::rt_exam::moveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rt_exam::moveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct moveRequest_

typedef ::rt_exam::moveRequest_<std::allocator<void> > moveRequest;

typedef boost::shared_ptr< ::rt_exam::moveRequest > moveRequestPtr;
typedef boost::shared_ptr< ::rt_exam::moveRequest const> moveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rt_exam::moveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rt_exam::moveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rt_exam

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rt_exam': ['/home/acer/houman-rtech/src/rt_exam/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rt_exam::moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rt_exam::moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_exam::moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_exam::moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_exam::moveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_exam::moveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rt_exam::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "784f09e13954265156e209263daa5991";
  }

  static const char* value(const ::rt_exam::moveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x784f09e139542651ULL;
  static const uint64_t static_value2 = 0x56e209263daa5991ULL;
};

template<class ContainerAllocator>
struct DataType< ::rt_exam::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rt_exam/moveRequest";
  }

  static const char* value(const ::rt_exam::moveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rt_exam::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 seconds\n\
int64 radian\n\
";
  }

  static const char* value(const ::rt_exam::moveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rt_exam::moveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.seconds);
      stream.next(m.radian);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rt_exam::moveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rt_exam::moveRequest_<ContainerAllocator>& v)
  {
    s << indent << "seconds: ";
    Printer<int64_t>::stream(s, indent + "  ", v.seconds);
    s << indent << "radian: ";
    Printer<int64_t>::stream(s, indent + "  ", v.radian);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RT_EXAM_MESSAGE_MOVEREQUEST_H
