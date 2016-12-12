#! /bin/bash
set -eu

DOCKER_IMAGE=$1
NETWORK_NAME=$2
COUNT=$3
N=$4

###############################################################
# this runs on each peer:
# 	kill peer
# 	bring it back online via fast sync
# 	wait for it to sync and check the app hash
###############################################################


echo "Testing fasysync on node $COUNT"

# kill peer 
set +e # circle sigh :(
docker rm -vf local_testnet_$COUNT
set -e 

# restart peer - should have an empty blockchain
SEEDS="$(test/p2p/ip.sh 1):46656"
for j in `seq 2 $N`; do
	SEEDS="$SEEDS,$(test/p2p/ip.sh $j):46656"
done
bash test/p2p/peer.sh $DOCKER_IMAGE $NETWORK_NAME $COUNT $SEEDS

# wait for peer to sync and check the app hash
bash test/p2p/client.sh $DOCKER_IMAGE $NETWORK_NAME fs_$COUNT "test/p2p/fast_sync/check_peer.sh $COUNT"

echo ""
echo "PASS"
echo ""
