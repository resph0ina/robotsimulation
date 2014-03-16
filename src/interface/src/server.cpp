#include "ros/ros.h"
#include "interface/parameter.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include <sstream>

/*double _position_neck_head = 0.0;
double _position_baselink_neck = 0.0;
double _velocity_left_fw = 0.0;
double _velocity_right_fw = 0.0;*/

 std_msgs::Float64 msg1;
 std_msgs::Float64 msg2;
 std_msgs::Float64 msg3;
 std_msgs::Float64 msg4;
  //msg2.data = sin(0.01*i);

bool add(interface::parameter::Request  &req,
        interface::parameter::Response &res/*,float & _position_neck_head,float & _position_baselink_neck,float & _velocity_left_fw,float & _velocity_right_fw*/)
{
  /*_position_neck_head = req.position_neck_head;
  _position_baselink_neck = req.position_baselink_neck;
  _velocity_left_fw = req.velocity_left_fw;
  _velocity_right_fw = req.velocity_right_fw;*/

  msg1.data = sin(0.01*req.position_neck_head);
  ROS_INFO("POSITION,%lf",req.position_neck_head);
  msg2.data = sin(0.01*req.position_baselink_neck);
  msg3.data = req.velocity_left_fw;
  msg4.data = req.velocity_right_fw;
}
  

int main(int argc, char **argv)
{
  ros::init(argc, argv, "server");
  ros::NodeHandle n;
  
  ros::Publisher neck_head_position_pub = n.advertise<std_msgs::Float64>("body/neck_head_position_controller/command", 1000);
  ros::Publisher baselink_neck_position_pub = n.advertise<std_msgs::Float64>("body/baselink_neck_position_controller/command", 1000);
  ros::Publisher left_front_wheel_velocity_pub = n.advertise<std_msgs::Float64>("body/left_front_wheel_velocity_controller/command", 1000);
  ros::Publisher right_front_wheel_velocity_pub = n.advertise<std_msgs::Float64>("/body/right_front_wheel_velocity_controller/command", 1000);
  ros::Rate loop_rate(1);

  ROS_INFO("Ready to accept orders and publish topic.");
  ros::ServiceServer service = n.advertiseService("final_simulate", add); 
  while (ros::ok())
  {
   	
        ROS_INFO("publishing topics...%lf,%lf,%lf,%lf",msg1.data,msg2.data,msg3.data,msg4.data);
 
   	neck_head_position_pub.publish(msg1);       
        baselink_neck_position_pub.publish(msg2);
	left_front_wheel_velocity_pub.publish(msg3);
	right_front_wheel_velocity_pub.publish(msg4);

   	ros::spinOnce();
    	loop_rate.sleep();
  }	


  ROS_INFO("Ready to accept orders and publish topic.");
  ros::spin();

  return 0;
}
