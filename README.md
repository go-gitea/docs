# Gitea: Docs

[![Build Status](http://beta.drone.io/api/badges/go-gitea/docs/status.svg)](http://beta.drone.io/go-gitea/docs)
[![](https://images.microbadger.com/badges/image/gitea/docs.svg)](http://microbadger.com/images/gitea/docs "Get your own image badge on microbadger.com")
[![Join the chat at https://gitter.im/go-gitea/gitea](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/go-gitea/gitea)

## Hosting

This page is hosted on our infrastructure within Docker containers, it gets
automcatically updated on every push to the `master` branch.

If you want to host this page on your own you can take our docker image
[gitea/docs](https://hub.docker.com/r/gitea/docs/).

## Install

This pages uses the [Hugo](https://github.com/spf13/hugo) static site generator.
If you are planning to contribute you'll want to download and install Hugo on
your local machine.

The installation of Hugo is out of the scope of this document, so please take
the [official install instructions](https://gohugo.io/overview/installing/) to
get Hugo up and running.

## Development

To generate the website and serve it on [localhost:1313](http://localhost:1313)
just execute this command and stop it with `Ctrl+C`:

```
make server
```

When you are done with your changes just create a pull request, after merging
the pull request the website will be updated automatically.

## Contributing

Fork -> Patch -> Push -> Pull Request

## License

This project is under the Apache-2.0 License. See the [LICENSE](LICENSE) file
for the full license text.

## Copyright

```
Copyright (c) 2016 The Gitea Authors <https://gitea.io>
```
