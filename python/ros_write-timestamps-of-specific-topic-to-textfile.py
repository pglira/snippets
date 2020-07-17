import rosbag

bag = rosbag.Bag('bagfile.bag')
file_timestamps = 'timestamps.txt'
topic_of_interest = '/camera_mgr/camera_pointgrey/right/image'

with open(file_timestamps, 'w') as f:
    for topic, msg, t in bag.read_messages():
        if topic == topic_of_interest:
            f.write('{}\n'.format(msg.header.stamp))

bag.close()
