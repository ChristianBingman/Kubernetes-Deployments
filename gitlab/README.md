# Gitlab Kubernetes Deployment ACM

# Setup

- Change AD information in files/config/gitlab.rb
- Add any extra options you may need there
- Create the folder config, data, and logs on your nfs share
- Copy the gitlab.rb to your config folder
- Change the address to the address of your nfs share in the gitlab-persistentvolume- files
- Deploy all the yml files (you may need to run the command a second time if you get a namespace error)
- Wait
