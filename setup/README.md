# Create Jekyll Setup

The current repository uses [Jekyll](https://jekyllrb.com/) and [GitHub Actions](https://github.com/features/actions) to deploy the website contents.

To deploy locally, you need to create a Jekyll Docker image and then create an initial site setup.
To create the initial Docker image, use:

```console
make build
```

The step below has already been done for this repository, there is no need to do it.
It initializes the current repository with the Jekyll-related files:

```console
make run
```
