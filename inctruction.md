1. Got to https://github.com
2. Create new repository
3. Check is you have SSH key <br>
 If not create it:
- In terminal generate SSH token:
- write **ssk-keygen -o**
- enter pashphere or leave it empty
- copy entire content of SSH key created on your PC
- Go to **settings > SSH and GPG keys**
- click **New SSH key**
- add title
- paste the content of SSH key 
4. Create personal acces tocken (classic):
- got to **settings > Developer Settings > Personal access tokens > tokens(classic)**
- Click on the right side **Generate new token**
- add name
- select **repo** and **workflow** checkboxes
- Generate token

5. Clone your repository to PC using **GIT**
6. Create directory **\.github\workflows** in the tepository
7. Create YAML file in \.github\workflows e.g. hello_world.yaml
8. Add content to the YAML file
```
name: Hello world workflow

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
  workflow_dispatch:

jobs:
  hello:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: hello world
        run: echo "Hello world"
        shell: bash
  goodbye:
    runs-on: ubuntu-latest
    steps:
      - name: goodbye world
        run: echo "Goodbye world"
        shell: bash
```
9. Commit and push changes to your repository
10. Check github action section in GitHub
11. Add Linter section to the hello_world.yaml file
``` 
  linter:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Super-Linter
        uses: super-linter/super-linter@v5.7.2
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
12. Repeate steps 9 and 10
13. Create sample script e.g. Python, bash, etc.
14. Repeate steps 9 and 10  
