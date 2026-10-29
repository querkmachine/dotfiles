# LibreWolf setup

My LibreWolf setup is ridiculously customised so here's some extra instructions for how I set that up specifically.

Stuff is set up to go through Firefox Sync, so some of this stuff should come through automatically. But if not...

## Extensions

Install these, at a minimum.

- [Multi account containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
- [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery/)
- [Tab Wrangler](https://addons.mozilla.org/en-US/firefox/addon/tabwrangler/)
- [Tampermonkey](https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/)
- [Stylus](https://addons.mozilla.org/en-US/firefox/addon/styl-us/)

### Sidebery

Import the `sidebery.json` file into Sidebery by entering its settings and scrolling down to 'Help' and clicking 'Import addon data'.

## Theme

Install [this theme](https://color.firefox.com/?theme=XQAAAAJ5AQAAAAAAAABBKYhm849SCia6aSqEGccwS-xMDPr4zmCkEY1gYj_umcirjQTFhOvh-CYcLsVz-mr4-hrdRMg_Uh_kC6xG_LaR2VoU7vRvRSi9YI1Eiaa2GDGkVXNY2_TwJZ1Uad-29QzVVxFz_Tz31RggkF6aSX4FE7_1xXVDamx7BkcpA0OoANt-FDMcKtnSmO5Id4xdpWVWdYNj2SussH-j4QhHRIMWl43yAcLkuZh6CEjv1pmyWqIwEwL4Xcag9fqT1eqTLUNzRCUe-5geIA) from Firefox Color.

## `about:config`

| Property                                              | Value           |
| :---------------------------------------------------- | :-------------- |
| `browser.newtabpage.enabled`                          | `false`         |
| `browser.toolbars.bookmarks.visibility`               | `never`         |
| `devtools.chrome.enabled`                             | `true`          |
| `devtools.debugger.remote-enabled`                    | `true`          |
| `sidebar.visibility`                                  | `hide-launcher` |
| `toolkit.legacyUserProfileCustomizations.stylesheets` | `true`          |

## `userChrome.css` and `userContent.css`

1. Find the current profile's root directory by going to `about:profiles`. If there's more than one with a name like 'default', it'll be the one with more stuff in it.
2. Create a directory named `chrome` inside of it, if one doesn't exist already.
3. Paste the `userChrome.css` and `userContent.css` files from this directory into that one.

This uses the font iA Writer Duo, download that from [the iA-Fonts repo](https://github.com/iaolo/iA-Fonts) if it's not already available.
