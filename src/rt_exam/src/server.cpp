#include "ros/ros.h"
#include "rt_exam/move.h"

bool add(rt_exam::move::Request  &req,
         rt_exam::move::Response &res)
{
  res.sum = req.seconds + req.radian;
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "move");
  ros::NodeHandle n;
  ros::ServiceServer service = n.advertiseService("move", add);
  ROS_INFO("Ready to receive velocity");
  ros::spin();

  return 0;
}
