#include "ros/ros.h"
#include "interface/converter.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include <sstream>

bool add(interface::converter::Request  &req,
        interface::converter::Response &res)
{
  ros::NodeHandle n;
//<----------------------------------------version 1------------------------------------------------->
  /*if(req.a!=1||req.a!=2)ROS_INFO("Warning. Please input the correct number you choose.");
  else 
  {
	if(req.a==1){
		ROS_INFO("request: option 1: head - up and down.");
		ros::Publisher chatter_pub = n.advertise<std_msgs::Float64>("body/neck_head_position_controller/command", 1000);}
	if(req.a==2){
		ROS_INFO("request: option 2: head - left and right.");
		ros::Publisher chatter_pub = n.advertise<std_msgs::Float64>("body/baselink_neck_position_controller/command", 1000);}
	ros::Rate loop_rate(100);
	int i = 0;
	while (ros::ok()&&i<=1000){
		std_msgs::Float64 msg2;
	    	msg2.data = sin(0.01*i);
	    	ROS_INFO("publishi: position %lf", msg2.data);
	   	chatter_pub.publish(msg2);
	   	ros::spinOnce();
	    	loop_rate.sleep();
	    	++i;}
  }
*/
//<--------------------------------------version 2------------------------------------------------>
  if(req.a==1)
  {
	ROS_INFO("request: option 1: head - up and down.");
	ros::Publisher chatter_pub = n.advertise<std_msgs::Float64>("body/neck_head_position_controller/command", 1000);
	ros::Rate loop_rate(100);
	int i = 0;
	while (ros::ok()&&i<=req.t)
  	{
        	std_msgs::Float64 msg1;
    		msg1.data = sin(0.01*i);
    		ROS_INFO("publishi: position %lf", msg1.data);
   		chatter_pub.publish(msg1);
   		ros::spinOnce();
    		loop_rate.sleep();
    		++i;
  	}	
  }
  else if(req.a==2)
	{
		ROS_INFO("request: option 2: head - left and right.");
		ros::Publisher chatter_pub = n.advertise<std_msgs::Float64>("body/baselink_neck_position_controller/command", 1000);
		ros::Rate loop_rate(100);
		int i = 0;
		while (ros::ok()&&i<=req.t)
  		{
			std_msgs::Float64 msg2;
	    		msg2.data = sin(0.01*i);
	    		ROS_INFO("publish: position %lf", msg2.data);
	   		chatter_pub.publish(msg2);
	   		ros::spinOnce();
	    		loop_rate.sleep();
	    		++i;
  		}	
	}
       else ROS_INFO("Please input the correct number you choose.");
  /*switch (req.a)
  {
    case 1:ROS_INFO("request: a=1, head: up and down.");
    case 2:ROS_INFO("request: a=2, head: left and right.");
    default;
  }*/
  ROS_INFO("sending back response: Option [%ld]", (long int)req.a);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "simulator_server");
  ros::NodeHandle n;
  ros::ServiceServer service = n.advertiseService("simulate", add);
  ROS_INFO("Ready to accept orders and publish topic.");
  ros::spin();

  return 0;
}
