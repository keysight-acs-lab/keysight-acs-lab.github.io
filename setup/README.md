# Create Jekyll Setup

The current repository is available both on [GitHub](https://github.com/keysight-acs-lab/keysight-acs-lab.github.io) and on the [UPB GitLab](https://gitlab.cs.pub.ro/keysight-acs-lab/site).
UPB GitLab is required for the UPB-specific domain for the deployed website: `keysight.upb.ro`.
It uses [Jekyll](https://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/) (for GitHub) or [GitLab Pages](https://docs.gitlab.com/user/project/pages/) (for GitLab) to deploy the website contents.
The contents are deployed at the URLs:
- GitHub: https://keysight-acs-lab.github.io/
- GitLab: https://site-2ccad9.pages.upb.ro/
- GitLab alias: https://keysight.upb.ro/

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
