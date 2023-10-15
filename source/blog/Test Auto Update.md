---
title: Blog Post Template
slug: blog-post-template
publish: true
date: 2023-10-15 02:48:50
update: 2023-10-15 03:07:53
categories:
  - catx
  - catx2
tags:
  - tagx
  - tagx2
---

## Heading

Let's test the auto update metadata key.

Officia voluptate Lorem laborum irure est enim cillum eiusmod mollit magna irure pariatur nostrud. Elit do consectetur ex anim do. Proident aliquip esse cupidatat occaecat culpa dolor aute. Cillum aliqua deserunt incididunt cillum do incididunt aute ut fugiat cupidatat duis in. Ipsum anim veniam occaecat sit adipisicing aute qui. Quis Lorem magna ea esse reprehenderit sunt. Deserunt nisi sunt enim nostrud.

## Process

**NOTE** - This process will only create `date` and `update` metadata in files that contain these metadata keys.  If you don't want the `date` and `update` keys in your documentation files, omit these metadata keys.  For example, to only have these metadata keys in blog-posts just add them into the blog-post template file only.

- Enable Obsidian Template Core Plugin
- Install and enable `obsidian-auto-front-matter` community plugin
	- change `frontmatter update` setting to `update`; default is `modified`
	- set date format setting to `YYYY-MM-DD HH:mm:ss`; this matches the pub-blog's python date format.
	- enable `only update existing fields` setting; this will only update files that have the `update` metadata key.
- Create a template file with `date` and `update` metadata keys.
- Here is an example blog-post template's yaml metadata

```yaml
---
title: Blog Post Template
slug: blog-post-template
publish: true        # for draft, set to 'false'
# description: 
# image: image.png # optional 1200x630 px
date: {{date}} {{time}} # This is for Obsdian Template Core Plugin's variable
update: # This will be set by the `obsidian-auto-front-matter` community plugin
categories:
  - cat
  - cat2
tags:
  - tag
  - tag2
---
```
