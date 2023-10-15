---
title: Pub-Blog Notes
slug: pub-blog-notes
publish: true
# description: ''
---

This plugin auto-generates the following items outside of the `docs` directory ...

- indexes
- archives
- categories
- tags
- pagination

## Date format

```yaml
date: 2023-02-12 22:00:00
```

- each date MUST be in this form; it is hardcoded and not configurable at this time
- each post must have a different date for the ordering to work correctly

## Default Configuration of `pub-blog` Plugin

- if using the defaults, you don't need to add them to the `mkdocs.yml` file. If you want to change them, they need to
  be added to `mkdocs.yml` file.

```yaml
plugins:
  - pub-blog:
      teaser_marker: `<!-- more -->`
      searchable_non_posts: false
      posts_per_page: 5
      slug: blog
      temp_dir: .temp
      archive_subdir: archive
      categories_subdir: categories
      tags_subdir: tags
      lang: 'en'
      

```