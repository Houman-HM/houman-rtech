

/* Author: Sachin Chitta, Dave Coleman, Mike Lautman */

#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "move_group_interface_tutorial");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();

  static const std::string PLANNING_GROUP1 = "first_manipulator";
  static const std::string PLANNING_GROUP2 = "second_manipulator";

  // The :move_group_interface:`MoveGroup` class can be easily
  // setup using just the name of the planning group you would like to control and plan for.
  moveit::planning_interface::MoveGroupInterface move_group1(PLANNING_GROUP1);
  moveit::planning_interface::MoveGroupInterface move_group2(PLANNING_GROUP2);
  moveit::planning_interface::MoveGroupInterface::Plan plan1;
  moveit::planning_interface::MoveGroupInterface::Plan plan2;

  // We will use the :planning_scene_interface:`PlanningSceneInterface`
  // class to add and remove collision objects in our "virtual world" scene

  // Raw pointers are frequently used to refer to the planning group for improved performance.
  const robot_state::JointModelGroup* joint_model_group1 =
      move_group1.getCurrentState()->getJointModelGroup(PLANNING_GROUP1);
  const robot_state::JointModelGroup* joint_model_group =
      move_group2.getCurrentState()->getJointModelGroup(PLANNING_GROUP2);


  // When done with the path constraint be sure to clear it.
  move_group1.clearPathConstraints();
  move_group2.clearPathConstraints();

  // Since we set the start state we have to clear it before planning other paths
  move_group1.setStartStateToCurrentState();
  move_group2.setStartStateToCurrentState();

  geometry_msgs::Pose target_pose3 = move_group1.getCurrentPose().pose;

  std::vector<geometry_msgs::Pose> waypoints1;
  waypoints1.push_back(target_pose3);

  target_pose3.position.z -= 0.2;
  waypoints1.push_back(target_pose3);  // down
  target_pose3.position.x -= 0.2;
  waypoints1.push_back(target_pose3);  // up and left
target_pose3.position.z += 0.2;  // down
  target_pose3.position.x += 0.2;
  waypoints1.push_back(target_pose3); 

  geometry_msgs::Pose target_pose2 = move_group2.getCurrentPose().pose;

  std::vector<geometry_msgs::Pose> waypoints2;
  waypoints2.push_back(target_pose2);

  target_pose2.position.z -= 0.2;
  waypoints2.push_back(target_pose2);  // down
  target_pose2.position.x -= 0.2;
  waypoints2.push_back(target_pose2);  // up and left
target_pose2.position.z += 0.2;  // down
  target_pose2.position.x += 0.2;
  waypoints2.push_back(target_pose2); 


  move_group1.setMaxVelocityScalingFactor(0.1);
  move_group2.setMaxVelocityScalingFactor(0.1);

  moveit_msgs::RobotTrajectory trajectory1;
  moveit_msgs::RobotTrajectory trajectory2;
  const double jump_threshold = 0.0;
  const double eef_step = 0.01;
  double fraction = move_group1.computeCartesianPath(waypoints1, eef_step, jump_threshold, trajectory1);
  double fraction2 = move_group2.computeCartesianPath(waypoints2, eef_step, jump_threshold, trajectory2);


plan1.trajectory_=trajectory1;
move_group1.execute(plan1);
plan2.trajectory_=trajectory2;
move_group2.execute(plan2);



  // END_TUTORIAL
  return 0;
}
