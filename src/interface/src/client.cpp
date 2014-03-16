#include "ros/ros.h"
#include "interface/parameter.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "client");
  if (argc != 3)
  {
    ROS_INFO("usage: simulator_client parameter value)");
    return 1;
  }

  int sign;
  float sign_value;
  sign = atoll(argv[1]);
  sign_value = atoll(argv[2]);

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<interface::parameter>("final_simulate");

  interface::parameter srv;

  srv.request.position_neck_head = 0;
  srv.request.position_baselink_neck = 0;
  srv.request.velocity_left_fw = 0;
  srv.request.velocity_right_fw = 0;
  
  if (sign == 1)srv.request.position_neck_head = sign_value;
  if (sign == 2)srv.request.position_baselink_neck = sign_value;
  if (sign == 3)srv.request.velocity_left_fw = sign_value;
  if (sign == 4)srv.request.velocity_right_fw = sign_value;
  client.call(srv);
  return 0;
}

