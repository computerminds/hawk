core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = "7.20"

projects[secret_project][type] = profile
projects[secret_project][download][type] = git
projects[secret_project][download][url] = git@github.com:computerminds/hawk.git
projects[secret_project][download][branch] = "master"
