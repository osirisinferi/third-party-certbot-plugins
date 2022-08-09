
# OsirisInferis overlay for third party plugins of the ACME client [certbot](https://github.com/certbot/certbot/)
[![pkgcheck](https://github.com/osirisinferi/third-party-certbot-plugins/workflows/pkgcheck/badge.svg)](https://github.com/osirisinferi/third-party-certbot-plugins/actions?query=workflow%3Apkgcheck)
[![ci](https://github.com/osirisinferi/third-party-certbot-plugins/actions/workflows/ci.yml/badge.svg)](https://github.com/osirisinferi/third-party-certbot-plugins/actions/workflows/ci.yml)

## Description

Currently, the only certbot plugins in the official Gentoo Portage tree are [certbot-apache](https://packages.gentoo.org/packages/app-crypt/certbot-apache), [certbot-dns-nsone](https://packages.gentoo.org/packages/app-crypt/certbot-dns-nsone) and [certbot-nginx](https://packages.gentoo.org/packages/app-crypt/certbot-nginx). All the other official DNS plugins are available on my other Certbot overlay called [certbot-dns-plugins](https://github.com/osirisinferi/certbot-dns-plugins-overlay). This overlay contains unofficial ebuilds for **third party** plugins from the world wide web.

Note: the working of these plugins is NOT garanteed, as I don't have any means to test them all.

## Instructions

### Recommended method

This method is for systems using [app-eselect/eselect-repository](https://packages.gentoo.org/packages/app-eselect/eselect-repository) for the management of their overlays. For the [layman](https://wiki.gentoo.org/wiki/Layman) method or if you want to add the overlay completely manually, see below.

If not installed already, install `app-eselect/eselect-repository`:

```
sudo emerge -av app-eselect/eselect-repository
```

Next, enable the overlay:

```
sudo eselect repository enable third-party-certbot-plugins
```

After the overlay has been enabled, it isn't downloaded yet. To download all the ebuilds, sync the overlay by running:

```
sudo emerge --sync third-party-certbot-plugins
```

Note: all ebuilds have the *testing* KEYWORDS variable set, including potential dependencies from this overlay. Please add the appropriate keyword when trying to install any of the ebuilds.

### Alternative methods

#### Layman

If you're using `layman` for managing your overlays, you can simply run:

```
sudo layman -a third-party-certbot-plugins
```

After layman automatically has synced the overlay, it can be used immediately.

Note: all ebuilds have the *testing* KEYWORDS variable set, including potential dependencies from this overlay. Please add the appropriate keyword when trying to install any of the ebuilds.

#### Manual installation of the repository without `eselect repository` or `layman`

First, if not done already, make the directory for the repositories:

```
sudo mkdir -p /var/db/repos
```

Then clone the git repository to the directory made above:

```
cd /var/db/repos/ && sudo git clone https://github.com/osirisinferi/third-party-certbot-plugins.git
```

Lastly, move the repo configuration file to the correct directory:

```
sudo mkdir -p /etc/portage/repos.conf
sudo ln -s /var/db/repos/third-party-certbot-plugins/third-party-certbot-plugins.conf /etc/portage/repos.conf/
```

Note: `repos.conf` can also be a file, but a directory is prefered according to [the Handbook](https://wiki.gentoo.org/wiki/Handbook:AMD64/Portage/Files#Gentoo_ebuild_repository).

See for more information: https://wiki.gentoo.org/wiki//etc/portage/repos.conf

Note: all ebuilds have the *testing* KEYWORDS variable set, including potential dependencies from this overlay. Please add the appropriate keyword when trying to install any of the ebuilds.
