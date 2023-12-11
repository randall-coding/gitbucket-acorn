# Deploy self hosted Gitbucket.

## Gitbucket
GitBucket is a simple open source Git web platform powered by Scala.  It's like having your own self hosted Github website that you can control.  Gitbucket's features include but are not limited to:  

* Public / Private Git repositories (with http/https and ssh access)
* GitLFS support
* Repository viewer including an online file editor
* Issues, Pull Requests and Wiki for repositories
* Activity timeline and email notifications
* Account and group management with LDAP integration
* Plugins
* API compatibility with GitHub

To make deploying Gitbucket even easier we will deploy our server using an acorn image.

## What is Acorn? 
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with cli
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have our secret file we can deploy our server from a pre-made image with just a click.

On the acorn.io dashboard, click "Deploy Acorn" and select "From Acorn Image".

Fill in the following fields:

- Name: `<any name you like>`
- Acorn Image: `ghcr.io/randall-coding/acorn/gitbucket`

!! acorn deploy ui

Visit the acorn dashboard and find your recent deployment.  Click on the name of your deployment and find the endpoint section in the right panel.  Click "copy" on the gitbucket endpoint and visit the link.

!!endpoint

Visiting the endpoint should show a screen like this:

!! First dashboard

## Setting up Gitbucket

Click "Sign In"

Sign in with the default root credentials `root` / `root`.

To add your first repository, click the "+" sign in the top right navigation, then click "New Repository".

## Reference

[Gitbucket - Wiki](https://github.com/gitbucket/gitbucket/wiki)
[Gitbucket - Repo](https://github.com/gitbucket/gitbucket)
[Gitbucket - Docker](https://github.com/gitbucket/gitbucket-docker)