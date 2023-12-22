#!/usr/bin/env python3

import os
import sys
import gitlab

GITLAB_ENDPOINT = os.environ.get('GITLAB_ENDPOINT')
GITLAB_TOKEN = os.environ.get('GITLAB_TOKEN')
GITLAB_PROJECT_ID = os.environ.get('GITLAB_PROJECT_ID')
ARTIFACT_NAME = os.environ.get('ARTIFACT_NAME')
ARTIFACT_SAVE_PATH = sys.argv[1]

gl = gitlab.Gitlab(GITLAB_ENDPOINT, private_token=GITLAB_TOKEN, keep_base_url=True)
project = gl.projects.get(GITLAB_PROJECT_ID)

print('[*] searching for artifacts')
jobs = project.jobs.list(scope='success', per_page=1, order_by='id', sort='desc', get_all=True)
if len(jobs) == 0:
    print('[E] no artifacts found')
    sys.exit(1)

for job in jobs:
    if not job.name == "CompileFramework":
        continue

    print('[*] found job: {}'.format(job.get_id()))
    print('[*] downloading artifact from job: {}'.format(job.name))
    if not job.artifacts:
        print('[E] no artifacts found')
        sys.exit(1)

    if os.path.exists(ARTIFACT_SAVE_PATH):
        print('[*] removing existing artifact: {}'.format(ARTIFACT_SAVE_PATH))
        os.remove(ARTIFACT_SAVE_PATH)
    with open(ARTIFACT_SAVE_PATH, "wb") as f:
        job.artifacts(streamed=True, action=f.write)
    print('[*] artifact saved to: {}'.format(ARTIFACT_SAVE_PATH))
    exit(0)
