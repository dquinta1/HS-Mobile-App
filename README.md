# hs_mobile_app

This is the repo for the Hope-Simpson Project - Mobile App, currently in its Development Stage.

### Collaboration Instructions

    1- clone repo
    2- create empty .env file at root of project
    3- run pub get on root
    4- flutter run

### Tasks Instructions
There is a TODOS.md file that contains all the currently active tasks. Resolving any of these contributes to the overall project. The tasks can be thought of in this way:

    - Major tasks like implementing a whole service that might be difficult to tackle individually
    - Minor tasks that are simply resolving a few TODOs (mainly Quality-of-Life)
    - UI/UX tasks that consist simply in beautifying the app

When taking on a specific task create a new branch that resembles that task and do not modify the TODOS.md, this will be done by the repo owner after the PR is reviewed, merged and the task is confirmed to have been resolved.

##### Note: Make sure the environment is set to 'dev' on env_config.dart otherwise the app might crash due to missing api keys. Alternatively you may create your own personal projects and use those API keys by specifying them in the .env file as required by main.dart.
