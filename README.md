* Contributions from:
  * https://github.com/StackStorm/st2contrib/tree/master/packs/ansible/actions
  * https://github.com/armab/st2-chatops-aliases


# Implements:

Name                           | File                          | Description
-------------                  | -------------                 | -------------
run_playbook                   | run-playbook.yaml             | Runs arbitrary ansible playbooks
run_task                       | run-task.yaml                 | Run a task from /tasks
deploy_and_run_task            | deploy_and_run_meta.yaml      | A workflow that deploys the infrastructure repository, then runs a task from /tasks