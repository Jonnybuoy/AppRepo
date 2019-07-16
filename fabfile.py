from fabric.api import local


def prepare_deploy():
    local("coverage run --source='.' manage.py test")
    local("coverage report")
    local("cd /home/johnson/Johnproject && git status && git add django-practice/app_portfolio && git commit && git push origin learningbranch")
    local("pwd")
