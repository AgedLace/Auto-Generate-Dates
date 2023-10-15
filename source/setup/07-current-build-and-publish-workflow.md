---
title: My Current Build and Publish Workflow
slug: build-publish-workflow
publish: true
# description: ''
---

This is my current workflow ...

- Create a new empty repository on GitHub

In the LOCAL project folder ... (from the virtual environment ???)

```
git init
git add . # stages all files
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/$USER/Name-of-Newly-Created-Empty-Repo.git
git push -u origin main
```

From the Virtual Environment ...

# Is this first step necessary if I'm deploying using `mkdocs gh-deploy`???
- Build the site into the `docs` Directory 
	- run `mkdocs build`
- Deploy the site to GitHub Pages
	- run 'mkdocs gh-deploy'

