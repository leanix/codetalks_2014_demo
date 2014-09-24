# CodeTalks 2014 Demo Repo

Repo for the talk http://www.codetalks.de/session_post/kopf-frei-fuers-produkt-automatisierung-mit-ansible-und-jenkins/ on the CodeTalks 2014 conference. The usage
of Jenkins combined with ansible scripts is demonstrated using a very basic example.

## Setup

* You need a running vagrant setup, preferably with hostsupdater (https://github.com/cogitatio/vagrant-hostsupdater).
* clone this repo
* cd vagrant; vagrant up

## Usage

A Jenkins instance is running on a VM at http://ci-box.dev:8080/ providing a single task to deploy a demo website. Run
the task and watch what is going on on http://demo.web-box.dev.

## Troubleshooting

* To enter the ci box: "cd vagrant; vagrant ssh ci"
* ensure that web-box.dev is in the known hosts of the jenkins@ci-box.dev user
