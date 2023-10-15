---
title: Pub-Social Plugin Notes
slug: pub-social-notes
publish: true
# description: ''
---

- This plugin's main purpose is for SEO Open Graph and Twitter metadata.
- Not possible to autogenerate at this time
	- can add image as a preview w/ additional description, etc.

## Global Document Metadata

NOTE - if a required key is missing, the social card will not be included on the web page.

- `title` - document title (30-65 characters; required)
- `description` - short description (120-350 characters; required)
- 'image' - link to an image (1200x630 pixels; optional)

---
title: Your document title
description: A short description of document content that encourage to read it
image: /some/url/to/an/image.jpg
---

## Configuration of `pub-social` Plugin

Again - all defaults are not required to be in the `mkdocs.yml` file.

```yaml
plugins:
  - pub-social:
      og:
        enabled: true
        locale: en_us
      twitter:
        enabled: true
        website: @website
        author: @author
      meta_keys:
        title_key: title
        description_key: description
        image_key: image


```


