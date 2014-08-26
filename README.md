# Chef cookbook for Statsdaemon

[![Build Status](https://travis-ci.org/odolbeau/cookbook-statsdaemon-bitly.png)](https://travis-ci.org/odolbeau/cookbook-statsdaemon-bitly)

## Description

Chef cookbook for [statsdaemon](https://github.com/bitly/statsdaemon), a statsd
daemon written in go by bitly.

## Requirements

### Platform

* Debian
* Ubuntu

**Notes**: This cookbook has been tested on Debian 7.6. It may work on other
platforms with or without modification. Please [report
issues](https://github.com/odolbeau/cookbook-statsdaemon-bitly/issues) any
additional platforms so they can be added.

## Usage

### statsdaemon-bitly::default

Just include `statsdaemon-bitly` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[statsdaemon-bitly]"
  ]
}
```

## Supermarket share

    knife supermarket share statsdaemon-bitly "Monitoring & Trending"

## License

This cookbook is released under the MIT License. See the bundled LICENSE file
for details.
