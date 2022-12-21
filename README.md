# k8s-Exercise

**A single yaml file** - Resources_ver1.yaml that describe a Kubernetes Deployment, Service
and HorizontalPodAutoscaler, as following:
  a. Deployment – 1 replica, using the first version of your image.
  b. Service – exposing your Deployment on port 30555
  c. HorizontalPodAutoscaler – matching the Deployment, minReplicas=1, maxReplicas=100

**A single Bash script** – kubernetes.sh, that will do the following:
  a. Create all the above resources using Resources_ver1.yaml
  b. Get the IP address of the service
  c. Query the HTTP server using the service’s IP address for 4 minutes. Print all the responses.
  d. Updating the application using a rolling update to version 2  using Resources_ver2.yaml.
  e. Once the update is done, query the HTTP server again (once). Print the output.
  f. Performing a rollback to the previous version. Once the rollback is done, query the HTTP server again (once). Print the output.
  g. Delete the Service, Deployment and HorizontalPodAutoscaler.
  h. Print “Great Success!”.
