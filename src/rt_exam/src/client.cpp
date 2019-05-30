#include "ros/ros.h"
#include "rt_exam/move.h"
#include <cstdlib>
#include "geometry_msgs/Twist.h"


int main(int argc, char **argv)
{

geometry_msgs::Twist twist;

  ros::init(argc, argv, "client");
  if (argc != 3)
  {
    ROS_INFO("usage: move client");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<rt_exam::move>("move");

  rt_exam::move srv;
  srv.request.seconds = atoll(argv[1]);
  srv.request.radian = atoll(argv[2]);
  ros::Publisher move_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);	
 ros::Rate loop_rate(10);

  if (client.call(srv))
  {

         while (ros::ok())
  {
   
   

  

        twist.angular.z = srv.response.sum;    
	move_pub.publish(twist);
        ros::spinOnce();
}
  }
  else
  {
    ROS_ERROR("Failed to call service");
    return 1;
  }

  return 0;
}
