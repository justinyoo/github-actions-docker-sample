# GitHub Docker Action Sample #

This is the sample GitHub Action built in Docker container.


## Inputs ##

* `name` (**Required**): Name to pass

## Outputs ##

* `greeting`: Greetings to be passed


## Example Usage ##

```yaml
steps:
- name: Run a sample Docker container action
  id: sampledockeraction
  uses: justinyoo/github-actions-docker-sample@v1.0.0
  with:
    name: GitHub Actions

- name: Get the output
  shell: bash
  run: |
    echo ${{ steps.sampledockeraction.outputs.greeting }}
```
