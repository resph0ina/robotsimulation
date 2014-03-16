#include "ros/ros.h"
#include "interface/KeepStaticParameter.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "client");

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<interface::KeepStaticParameter>("KeepStatic");

  interface::KeepStaticParameter srv;

  srv.request.position_neck_head = 0;
  srv.request.position_baselink_neck = 0;
  srv.request.velocity_left_fw = 0;
  srv.request.velocity_right_fw = 0;
  
  client.call(srv);
  return 0;
}

