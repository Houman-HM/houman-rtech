// Generated by gencpp from file motoman_msgs/DynamicJointState.msg
// DO NOT EDIT!


#ifndef MOTOMAN_MSGS_MESSAGE_DYNAMICJOINTSTATE_H
#define MOTOMAN_MSGS_MESSAGE_DYNAMICJOINTSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace motoman_msgs
{
template <class ContainerAllocator>
struct DynamicJointState_
{
  typedef DynamicJointState_<ContainerAllocator> Type;

  DynamicJointState_()
    : group_number(0)
    , num_joints(0)
    , valid_fields(0)
    , positions()
    , velocities()
    , accelerations()
    , effort()
    , positions_desired()
    , positions_errors()
    , velocities_desired()
    , velocities_errors()
    , accelerations_desired()
    , accelerations_errors()
    , effort_errors()
    , effort_desired()  {
    }
  DynamicJointState_(const ContainerAllocator& _alloc)
    : group_number(0)
    , num_joints(0)
    , valid_fields(0)
    , positions(_alloc)
    , velocities(_alloc)
    , accelerations(_alloc)
    , effort(_alloc)
    , positions_desired(_alloc)
    , positions_errors(_alloc)
    , velocities_desired(_alloc)
    , velocities_errors(_alloc)
    , accelerations_desired(_alloc)
    , accelerations_errors(_alloc)
    , effort_errors(_alloc)
    , effort_desired(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _group_number_type;
  _group_number_type group_number;

   typedef int16_t _num_joints_type;
  _num_joints_type num_joints;

   typedef int16_t _valid_fields_type;
  _valid_fields_type valid_fields;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _positions_type;
  _positions_type positions;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _velocities_type;
  _velocities_type velocities;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _accelerations_type;
  _accelerations_type accelerations;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _effort_type;
  _effort_type effort;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _positions_desired_type;
  _positions_desired_type positions_desired;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _positions_errors_type;
  _positions_errors_type positions_errors;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _velocities_desired_type;
  _velocities_desired_type velocities_desired;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _velocities_errors_type;
  _velocities_errors_type velocities_errors;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _accelerations_desired_type;
  _accelerations_desired_type accelerations_desired;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _accelerations_errors_type;
  _accelerations_errors_type accelerations_errors;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _effort_errors_type;
  _effort_errors_type effort_errors;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _effort_desired_type;
  _effort_desired_type effort_desired;





  typedef boost::shared_ptr< ::motoman_msgs::DynamicJointState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motoman_msgs::DynamicJointState_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicJointState_

typedef ::motoman_msgs::DynamicJointState_<std::allocator<void> > DynamicJointState;

typedef boost::shared_ptr< ::motoman_msgs::DynamicJointState > DynamicJointStatePtr;
typedef boost::shared_ptr< ::motoman_msgs::DynamicJointState const> DynamicJointStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motoman_msgs::DynamicJointState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace motoman_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'industrial_msgs': ['/opt/ros/kinetic/share/industrial_msgs/cmake/../msg'], 'motoman_msgs': ['/home/acer/houman-rtech/src/motoman/motoman_msgs/msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motoman_msgs::DynamicJointState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motoman_msgs::DynamicJointState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motoman_msgs::DynamicJointState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c44649b8de969b98f15adea419fa49a4";
  }

  static const char* value(const ::motoman_msgs::DynamicJointState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc44649b8de969b98ULL;
  static const uint64_t static_value2 = 0xf15adea419fa49a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motoman_msgs/DynamicJointState";
  }

  static const char* value(const ::motoman_msgs::DynamicJointState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#group[]: # length of this array must match num_groups\n\
#    id:   control-group ID for use on-controller\n\
#    num_joints: # of joints in this motion group\n\
#    valid_fields: #bit field for following items\n\
#    # length of the following items must match num_joints, order set by controller.  Invalid fields (see bit field above) are not included, resulting in a shorter message.\n\
#    positions[]\n\
#    velocities[]\n\
#    accelerations[]\n\
#    effort[]\n\
#    position_desired[]\n\
#    position_errors[]\n\
#    velocity_desired[]\n\
#    velocity_errors[]\n\
#    effort_desired[]\n\
#    effort_error[]\n\
\n\
int16 group_number\n\
int16 num_joints\n\
int16 valid_fields\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
float64[] effort\n\
float64[] positions_desired\n\
float64[] positions_errors\n\
float64[] velocities_desired\n\
float64[] velocities_errors\n\
float64[] accelerations_desired\n\
float64[] accelerations_errors\n\
float64[] effort_errors\n\
float64[] effort_desired\n\
";
  }

  static const char* value(const ::motoman_msgs::DynamicJointState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.group_number);
      stream.next(m.num_joints);
      stream.next(m.valid_fields);
      stream.next(m.positions);
      stream.next(m.velocities);
      stream.next(m.accelerations);
      stream.next(m.effort);
      stream.next(m.positions_desired);
      stream.next(m.positions_errors);
      stream.next(m.velocities_desired);
      stream.next(m.velocities_errors);
      stream.next(m.accelerations_desired);
      stream.next(m.accelerations_errors);
      stream.next(m.effort_errors);
      stream.next(m.effort_desired);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicJointState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motoman_msgs::DynamicJointState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motoman_msgs::DynamicJointState_<ContainerAllocator>& v)
  {
    s << indent << "group_number: ";
    Printer<int16_t>::stream(s, indent + "  ", v.group_number);
    s << indent << "num_joints: ";
    Printer<int16_t>::stream(s, indent + "  ", v.num_joints);
    s << indent << "valid_fields: ";
    Printer<int16_t>::stream(s, indent + "  ", v.valid_fields);
    s << indent << "positions[]" << std::endl;
    for (size_t i = 0; i < v.positions.size(); ++i)
    {
      s << indent << "  positions[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.positions[i]);
    }
    s << indent << "velocities[]" << std::endl;
    for (size_t i = 0; i < v.velocities.size(); ++i)
    {
      s << indent << "  velocities[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocities[i]);
    }
    s << indent << "accelerations[]" << std::endl;
    for (size_t i = 0; i < v.accelerations.size(); ++i)
    {
      s << indent << "  accelerations[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.accelerations[i]);
    }
    s << indent << "effort[]" << std::endl;
    for (size_t i = 0; i < v.effort.size(); ++i)
    {
      s << indent << "  effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.effort[i]);
    }
    s << indent << "positions_desired[]" << std::endl;
    for (size_t i = 0; i < v.positions_desired.size(); ++i)
    {
      s << indent << "  positions_desired[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.positions_desired[i]);
    }
    s << indent << "positions_errors[]" << std::endl;
    for (size_t i = 0; i < v.positions_errors.size(); ++i)
    {
      s << indent << "  positions_errors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.positions_errors[i]);
    }
    s << indent << "velocities_desired[]" << std::endl;
    for (size_t i = 0; i < v.velocities_desired.size(); ++i)
    {
      s << indent << "  velocities_desired[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocities_desired[i]);
    }
    s << indent << "velocities_errors[]" << std::endl;
    for (size_t i = 0; i < v.velocities_errors.size(); ++i)
    {
      s << indent << "  velocities_errors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocities_errors[i]);
    }
    s << indent << "accelerations_desired[]" << std::endl;
    for (size_t i = 0; i < v.accelerations_desired.size(); ++i)
    {
      s << indent << "  accelerations_desired[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.accelerations_desired[i]);
    }
    s << indent << "accelerations_errors[]" << std::endl;
    for (size_t i = 0; i < v.accelerations_errors.size(); ++i)
    {
      s << indent << "  accelerations_errors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.accelerations_errors[i]);
    }
    s << indent << "effort_errors[]" << std::endl;
    for (size_t i = 0; i < v.effort_errors.size(); ++i)
    {
      s << indent << "  effort_errors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.effort_errors[i]);
    }
    s << indent << "effort_desired[]" << std::endl;
    for (size_t i = 0; i < v.effort_desired.size(); ++i)
    {
      s << indent << "  effort_desired[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.effort_desired[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTOMAN_MSGS_MESSAGE_DYNAMICJOINTSTATE_H
