#include "ros/ros.h"
#include "interface/simulation_parameter.h"
#include "std_msgs/Float64.h"
#include <sstream>

 std_msgs::Float64 msg1;
 std_msgs::Float64 msg2;
 std_msgs::Float64 msg3;
 std_msgs::Float64 msg4;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "simulation_server");
  ros::NodeHandle n;
  
  ros::Publisher neck_head_position_pub = n.advertise<std_msgs::Float64>("body/neck_head_position_controller/command", 1000);
  ros::Publisher baselink_neck_position_pub = n.advertise<std_msgs::Float64>("body/baselink_neck_position_controller/command", 1000);
  ros::Publisher left_front_wheel_velocity_pub = n.advertise<std_msgs::Float64>("body/left_front_wheel_velocity_controller/command", 1000);
  ros::Publisher right_front_wheel_velocity_pub = n.advertise<std_msgs::Float64>("/body/right_front_wheel_velocity_controller/command", 1000);
  ros::Rate loop_rate(1);

  ROS_INFO("Ready to accept orders and publish topic.");
  ros::ServiceServer KeepStatic_Whole_service = n.advertiseService("KeepStatic_Whole", Keep_Static_Whole);//全身静止； 
  ros::ServiceServer KeepStatic_Body_service = n.advertiseService("KeepStatic_Body", Keep_Static_Body);//身体静止（头可以转动，也可以不转）；
  ros::ServiceServer KeepStatic_Head_service = n.advertiseService("KeepStatic_Head", Keep_Static_Head);//头部静止； 
  ros::ServiceServer StepForward_service = n.advertiseService("StepForward", Step_Forward); //前进——需要以前进的速度（velocity_stepforward）作为参数；
  ros::ServiceServer StepBackward_service = n.advertiseService("StepBackward", Step_Backward); //后退——需要以后退的速度（velocity_stepbackward）作为参数；
  ros::ServiceServer SpotTurnLeft_service = n.advertiseService("SpotTurnLeft", Spot_TurnLeft);//原地左转；
  ros::ServiceServer SpotTurnRight_service = n.advertiseService("SpotTurnRight", Spot_TurnRight);//原地右转；
  ros::ServiceServer HeadLeftAndRight_service = n.advertiseService("HeadLeftAndRight", Head_LeftAndRight);//头部左右运动；

  int i = 0;
  while (ros::ok())
  {
   	
        ROS_INFO("publishing topics...%lf,%lf,%lf,%lf",msg1.data,msg2.data,msg3.data,msg4.data);
 
   	neck_head_position_pub.publish(msg1);       
        baselink_neck_position_pub.publish(msg2);
	left_front_wheel_velocity_pub.publish(msg3);
	right_front_wheel_velocity_pub.publish(msg4);

   	ros::spinOnce();
    	loop_rate.sleep();

        ++i;
  }	

  ROS_INFO("Ready to accept orders and publish topic.");
  ros::spin();

  return 0;
}


bool Keep_Static_Whole(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg1.data = 0;
  msg2.data = 0;
  msg3.data = 0;
  msg4.data = 0;
}

bool Keep_Static_Body(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg3.data = 0;
  msg4.data = 0;
}

bool Keep_Static_Head(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg1.data = 0;
  msg2.data = 0;
}

bool Step_Forward(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg3.data = req.velocity_stepforward;
  msg4.data = req.velocity_stepforward;
}

bool Step_Backward(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg3.data = req.velocity_stepbackward;
  msg4.data = req.velocity_stepbackward;
}

bool Spot_TurnLeft(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg3.data = -10;
  msg4.data = 10;
}

bool Spot_TurnRight(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg3.data = 10;
  msg4.data = -10;
}

bool Head_LeftAndRight(interface::simulation_parameter::Request  &req,interface::simulation_parameter::Response &res)
{
  msg2.data =   ;
}
