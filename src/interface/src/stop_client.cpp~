#include "ros/ros.h"
#include "interface/converter.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "simulator_client");
  if (argc != 3)
  {
    ROS_INFO("usage: simulator_client X T(Option 1: head - up and down;  Option 2: head - left and right;)");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<interface::converter>("simulate");
  interface::converter srv;
  srv.request.a = atoll(argv[1]);
  srv.request.t = atoll(argv[2]);
  if (client.call(srv))
  {
    if(srv.request.a==1)ROS_INFO("head -  up and down.  Time: %ld .",(long int)srv.request.t);
    else if(srv.request.a==2)ROS_INFO("head -  left and right.   Time: %ld .",(long int)srv.request.t);
         else ROS_INFO("Please input the correct number you choose.");
    /*switch (srv.response.result)
    {
    case 1:ROS_INFO("head: up and down.");
    case 2:ROS_INFO("head: left and right.");
    }*/
  }
  else
  {
    ROS_ERROR("Failed to call service and publish topics to gazebo.");
    return 1;
  }

  return 0;
}

