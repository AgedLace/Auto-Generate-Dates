---
title: Pub-Meta Plugin Notes
slug: pub-meta-notes
publish: true
---

## Document YAML FrontMatter

Important metadata settings

* URL
* creation/update date
* document publication state
* other metadata as needed for SEO

## Directory Metadata

* Must create a `README.md` file inside the directory

Possible metadata settings are …

* Dates are currently hardcoded and cannot be changed programmatically. Also, each file / blog post must have a  
	different date - thus the %H:%M%S

* Dates are also used by the pub-blog plugin for post ordering; as well as the meta plugin for updating a sitemap file

### Date

```
date: 2023-05-19 15:40:36  # Use Python date format %Y-%m-%d %H:%M:%S
```

### Update

```
update: 2023-06-12 14:16:52 # Same as above - %Y-%m-%d %H:%M:%S
```

## Navigation

* Navigation is automatically generated.
* Easiest way to change the order is to use a numbering system prefix for directory names, *i.e.* …
	* 01 - Blog
	* 02 - Directory_1
	* 03 - Directory_2

To solve strange URLs and document titles use `title` and `slug` frontmatter.

### Title

```
title: Document Title
```

### Slug

```
slug: document-slug
```

## Document Publication Status

Three states …

* published

```
status: published
```

	- appears in navigation
	- can be linked to via the navigation
	- will be visible on the generated web page

* hidden

```yaml
status: hidden
```

	- will not appear in navigation
	- page will be generated up `mkdocs build` command
	- can be internally linked to
	- can also be externally linked to via direct URL address

* draft (default)

```yaml
status: draft # default
```

	- will not appear in navigation
	- will not be generated at build time
	- EXCEPTION
		- will be generated with the local `mkdocs serve` command 

## Directory Publication Status

Directories require a `README.md` file with one of three status states listed in previous section. The same conditions  
apply as for documents.

NOTE - If no status is set for a directory, the default is `published`.

## Configuration of `pub-meta` plugin

### Defaults

NOTE - if using the defaults, you don't need to add them to the `mkdocs.yml` file. If you want to change them, they need  
to be added to `mkdocs.yml` file.

```yaml
plugins:
  - pub-meta:
      dir_meta.file: README.md
      slug:
        enable: true
        warn_on_missing: true  # used when MkDocs `strict mode` is switched on
        key_name: status
      status:
        search_in_hidden: false
        search_in_draft: false
        file_default: draft  # other choices are `published` and `hidden`
        file_warn_on_missing: true # for `strict mode`
        dir_default: published
        dir_warn_on_missing: false # for `strict mode'
        key_name: status
      title:
        key_name: title
```
