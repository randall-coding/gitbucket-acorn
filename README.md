# Deploy self hosted Gitbucket.

## Gitbucket
GitBucket is a simple open source Git web platform that let's you store your code on your own servers.  It's like having your own Github website that you can control.  Gitbucket's features include but are not limited to:  

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

![acorn_deploy_ui](https://github.com/randall-coding/gitbucket-acorn/assets/39175191/d71624ac-a8fa-41df-9a43-bad84f69c96d)

Visit the acorn dashboard and find your recent deployment.  Click on the name of your deployment and find the endpoint section in the right panel.  Click "copy" on the gitbucket endpoint and visit the link.

![gitbucket_endpoint](https://github.com/randall-coding/gitbucket-acorn/assets/39175191/d78c8b1b-b684-4c6b-83ca-b7358942e31a)

Visiting the endpoint should show a screen like this:

![gitbucket_first_dashboard](https://github.com/randall-coding/gitbucket-acorn/assets/39175191/c8ec6968-61cf-4bf4-8a84-a31664d3df3a)

## Setting up Gitbucket

Click "Sign In".

Sign in with the default root credentials `root` / `root`.

To add your first repository, click the "+" sign in the top right navigation, then click "New Repository".

![gitbucket_add_repo](https://github.com/randall-coding/gitbucket-acorn/assets/39175191/5da78ee6-3721-47e4-b7f7-fbbc10b50148)

Fill in the form just like you would on Github and create your repo.

![gitbucket_create_new](https://github.com/randall-coding/gitbucket-acorn/assets/39175191/3fa57edd-0a8f-4b27-a1f3-ac8f7fb9de16)

To start using your repo, copy the link from the repo UI shown below.

![gitbucket_copy_url](https://github.com/randall-coding/gitbucket-acorn/assets/39175191/f6730fc5-e0b4-4ea7-bb37-36714457da0a)

Clone the repo locally just like you would with any remote repository using that link: `git clone <copied url>`

We've set up our self hosted remote Git repository.  For further information on using Gitbucket see the references section below.

## Reference

* [Gitbucket - Wiki](https://github.com/gitbucket/gitbucket/wiki)
* [Gitbucket - Repo](https://github.com/gitbucket/gitbucket)
* [Gitbucket - Docker](https://github.com/gitbucket/gitbucket-docker)
