import rosbag

bag = rosbag.Bag('bagfile.bag')

# Print topics
topics = bag.get_type_and_topic_info()[1].keys()
print(topics)

# Iterate over all messages
for topic, msg, t in bag.read_messages():
    if topic == '/camera_mgr/camera_pointgrey/right/image':
        # do something

# Iterate over messages of specific topics
for topic, msg, t in bag.read_messages(topics=['chatter', 'numbers']):
    # do something

bag.close()
