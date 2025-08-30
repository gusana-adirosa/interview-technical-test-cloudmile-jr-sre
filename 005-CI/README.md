For the case number 5, this can be tackled by implementing GitOps using GitHub and GitHub Actions.
The overall process/workflow is as written on the ```./.github/workflows```

Note: 
- The CI is only valid for auto deployment to a test environment, and not adjusted to cater for staging/production/any other environments as it's already hard coded and the diffentiation between environments hasn't yet been chosen.
- The code hasn't yet been tested, but the overview can already be seen by the workflow.