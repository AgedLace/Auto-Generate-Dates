---
title: Pub-Debugger Plugin Notes
slug: pub-debugger-notes
publish: true
# description: ''
---

Designed to be used to supply logs to the developer when submitting an issue.

DONT FORGET TO ADD THESE FILES TO THE `.gitignore` FILE.

ENSURE THERE IS NO PRIVATE DATA BEING SUBMITTED IN THE LOG FILES!!!

Three Modules

- console logger
- file logger
- zip file generator

## Configuration of `pub-debugger` Plugin

```yaml
plugins:
  - pub-debugger:
    console_log:
      enabled: true
      log_level: INFO
      show_code_link: false
      show_logger_name: true
      show_entry_time: true
      entry_time_format: "%H:%M:%S.%f"
      filter_logger_names: [ ]
    file_log:
      enabled: true
      log_level: DEBUG
      log_format: "[%(created).14s][%(levelname)-5.5s][%(project_path)s:%(lineno)d] %(message)s"
      remove_old_files: true
      filter_logger_names: [ ]
    zip_log:
      enabled: true
      remove_old_files: true
      add_pip_freeze: true

```