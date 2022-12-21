PORT=30555
echo “- = Starting = -”

echo “- = Creating resources = -”
kubectl apply -f Resources_ver1.yaml

IP="$(kubectl get service edenat-nginx | awk '/edenat-nginx/{print $3}')"
echo “- = The IP address of my service is: $IP = -”

SECONDS=$(date +%s)
end=$((SECONDS+240))
while [ ${SECONDS} -lt ${end} ]; do 
wget $IP:$PORT -q -O-
done

echo “- = Updating application = -”
kubectl apply -f Resources_ver2.yaml
sleep 30
wget $IP:$PORT -q -O-

echo “- = Rolling back = -”
kubectl rollout undo deployment edenat-nginx
sleep 30
wget $IP:$PORT -q -O-

echo “- = Cleaning up = -”
kubectl delete -f Resources_ver1.yaml


echo “- = Great Success! = -”
