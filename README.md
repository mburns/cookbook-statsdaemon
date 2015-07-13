# Chef cookbook for Statsdaemon

[![Build Status](https://travis-ci.org/mburns/cookbook-statsdaemon.svg)](https://travis-ci.org/mburns/cookbook-statsdaemon)
[![Chef cookbook](https://img.shields.io/cookbook/v/statsdaemon.svg)](https://supermarket.chef.io/cookbooks/statsdaemon)

## Description

Chef cookbook for [statsdaemon](https://github.com/bitly/statsdaemon), a statsd
daemon written in go by bitly.

## Requirements

### Platform

* Debian
* Ubuntu

**Notes**: This cookbook has been tested on Debian 7.6. It may work on other
platforms with or without modification. Please [report
issues](https://github.com/mburns/cookbook-statsdaemon/issues) any
additional platforms so they can be added.

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

## Supermarket share

    knife supermarket share statsdaemon "Monitoring & Trending"

## License

This cookbook is released under the MIT License. See the bundled LICENSE file
for details.
