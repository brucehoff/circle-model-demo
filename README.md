# circle-model-demo
Demo of building a CIRCLE model and publishing to Synapse


# To run locally
```
docker build -t circle-model-demo .
docker run --rm -it -e string_param=string -e integer_param=1 circle-model-demo 
```

# To publish

In your github repo', set the repository secrect
https://github.com/brucehoff/circle-model-demo/settings/secrets/actions

https://docs.synapse.org/synapse-docs/managing-your-account#Personal-Access-Tokens-(PATs)


SYNAPSE_PAT

and the repository variable where you want to push your model
https://github.com/brucehoff/circle-model-demo/settings/variables/actions
SYNAPSE_PROJECT_ID

Then push to GitHub.  The model will be pushed to the Synapse Docker Registry and appear under your Synapse project. The Docker repository name will be:

```
docker.synapse.org/syn78712390/<owner>/circle-model-demo:<tag>
```

where `<owner>` is the name of your GitHub account and `<tag>` is the GitHub branch or tag you pushed to.


