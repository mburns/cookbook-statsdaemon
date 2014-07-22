# Chef cookbook for Statsdaemon

NOT FUNCTIONNAL FOR NOW.

## Description

Chef cookbook for [statsdaemon](https://github.com/bitly/statsdaemon), a statsd
daemon written in go.

## Requirements

### Platform

* Debian
* Ubuntu

**Notes**: This cookbook has been tested on Debian 7.2. It may work on other
platforms with or without modification. Please [report
issues](https://github.com/odolbeau/cookbook-statsdaemon/issues) any additional
platforms so they can be added.

## Usage

### statsdaemon::default

Just include `statsdaemon` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[statsdaemon]"
  ]
}
```
