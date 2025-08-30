# interview-technical-test-cloudmile-jr-sre
## Assignment
SRE Submission
The goal of this exercise is to run a Nexus application on Google Kubernetes Engine that can save
the uploaded artifacts in Cloud Storage. In your solution, follow the given order of the subtasks.
Upload the finished files to GitHub and send us the repo with the capture and result.
1. Build a custom container
You don't have to start from scratch. Nexus has an image already prepared here:
https://hub.docker.com/r/sonatype/nexus3/
Nexus needs a plugin to write into Cloud Storage. You can find the description here:
https://help.sonatype.com/en/google-cloud-blob-store.html
Create a Docker file, which makes an image where the Cloud Storage plugin is already properly
installed.
2. Kubernetes configs
To deploy the previously created custom container to Kubernetes, we need a descriptor file. Make a
yaml configuration file that lets you create the next units: Service, Persistence volume, Deployment.
It's a plus if you use a templating tool such as Helm or Kustomize.
3. GCP resource creation
Please create Terraform or Deployment Manager scripts in order to create the Cloud Storage Bucket
and the Kubernetes Cluster. To lower the costs please create a node-pool with 1 node and
n1-standard-1 machine type and use preemptible VMs.
4. Deploy
Deploy it to the GCP project
5. Continuous integration - a theoretical question
We might have to modify the previously created files, for example because of a new Nexus version.
We want this to automatically be deployed to a test environment after we have made the changes on
Git.
Please describe in a few words how you would satisfy this need.