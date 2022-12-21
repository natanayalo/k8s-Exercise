# k8s-Exercise

**A single yaml file** - Resources_ver1.yaml that describe a Kubernetes Deployment, Service and HorizontalPodAutoscaler, as following:
  a. Deployment – 1 replica, using the first version of your image.
  b. Service – exposing your Deployment on port 30555
  c. HorizontalPodAutoscaler – matching the Deployment, minReplicas=1, maxReplicas=100

**A single Bash script** – kubernetes.sh, that will do the following:
  a. Create all the above resources using Resources_ver1.yaml.
  b. Get the IP address of the service.
  c. Query the HTTP server using the service’s IP address for 4 minutes. Print all the responses.
  d. Updating the application using a rolling update to version 2  using Resources_ver2.yaml.
  e. Once the update is done, query the HTTP server again (once). Print the output.
  f. Performing a rollback to the previous version. Once the rollback is done, query the HTTP server again (once). Print the output.
  g. Delete the Service, Deployment and HorizontalPodAutoscaler.
  h. Print “Great Success!”.

**2 Docker images** based on nginx, that listens on port 80 and returns “Server address: <IP:PORT>”.
In addition to this, the server also return the IDs of the students and the version of the image, in the following format:
Server address: 10.1.2.3:80.
Student IDs: 123456789_987654321.
Server version: version-1.
And aversion 2 of the Docker image that will return:
Server address: 10.1.2.3:80.
Student IDs: 123456789_987654321.
Server version: version-2.
