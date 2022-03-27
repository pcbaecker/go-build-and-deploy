# Go build and deploy (on k8s)

This Github Action is intended for a very specific usecase. To build a go executable with private dependencies, build a container image and then update a k8s deployment.yaml with that container image name.

To deploy on ghcr.io container registry the following inputs should be set:

    goprivate: github.com/pcbaecker
    repoaccesstoken: ${{ secrets.REPO_ACCESS_TOKEN }}  # A Personal Access Token that can read and write your repositories
    deploy-repository: pcbaecker/k8s-yamls
    deploy-file: cool-service/deployment.yaml
