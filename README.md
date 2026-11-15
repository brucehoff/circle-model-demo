# circle-model-demo
Demo of building a CIRCLE model and publishing to Synapse


# To run locally
```
docker build -t circle-model-demo .
docker run --rm -it -e string_param=string -e integer_param=1 circle-model-demo 
```

# To publish

In your GitHub repository's [repository secrets page](https://github.com/<owner>/circle-model-demo/settings/secrets/actions), 
set the secret `SYNAPSE_PAT` to be your [Synapse personal access token](https://docs.synapse.org/synapse-docs/managing-your-account#Personal-Access-Tokens-(PATs)).


In your GitHub repository's [repository variables page](https://github.com/<owner>/circle-model-demo/settings/variables/actions), 
set the variable `SYNAPSE_PROJECT_ID` to be the ID of the Synapse project to which you want to push your model.

Once you push to GitHub, the Docker container for your model will be built, pushed
to the Synapse Docker Registry and will appear under your Synapse project. The Docker repository name will be:

```
docker.synapse.org/<project_id>>/<owner>/circle-model-demo:<tag>
```

where `project_id` is the syn id of your project, `<owner>` is the name of your GitHub account 
and `<tag>` is the GitHub branch or tag you pushed to.

The parameters for the model can be retrieved **before** pulling the model with this command:

```
docker buildx imagetools inspect docker.synapse.org/<project_id>/<owner>/circle-model-demo:<tag> --raw | jq -r '.annotations.model_parameters |   fromjson'
```

This will return:

```
{
  "description": "model parameters",
  "properties": {
    "string_param": {
      "description": "an example of a string parameter",
      "type": "string"
    },
    "integer_param": {
      "description": "an example of an integer parameter",
      "type": "integer"
    }
  }
}
```

