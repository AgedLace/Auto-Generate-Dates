---
title: Pub-Obsidian Plugin Notes
slug: pub-obsidian-notes
publish: true
# description: ''
---

## Setting Up Obsidian

### Included Obsidian Features

- Callouts
- Wikilinks for internal links
- automatic Backlinks
- Vega Charts

More supported Obsidian plugins are being planned.

- Obsidian vault needs to be created inside the `docs` directory
- add the hidden `.obsidian` directory to the `.gitignore` file
- create `_templates/` directory inside `docs` directory

## Configuration of `pub-obsidian` Plugin

Again, these are the defaults ... only need to be added to `mkdocs.yml` if using non-default values.

```yaml
plugins:
  - pub-obsidian:
      obsidian_dir: .obsidian
      templates_dir: _templates
    backlinks:
      enabled: true
    callouts:
      enabled: true
      indentation: spaces
    links:
      wikilinks_enabled: true
      img_lazy: true
    vega:
      enabled: true
      vega_schema: https://vega.github.io/schema/vega/v5.json
      vega_lite_schema: https://vega.github.io/schema/vega-lite/v5.json
```


