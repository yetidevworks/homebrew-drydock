# homebrew-drydock

Homebrew tap for [drydock](https://github.com/yetidevworks/drydock). What's uncommitted, unpushed, and unreleased across every repo you own.

```sh
brew install yetidevworks/drydock/drydock
```

Name the tap in full, as above. Homebrew 6 refuses to load formulae from
untrusted taps, and a fully-qualified name counts as consent, so this needs no
`brew trust` step. Tapping first and installing by the bare `drydock` does not,
and fails with "Refusing to load formula".

`Formula/drydock.rb` is written automatically by the
[release workflow](https://github.com/yetidevworks/drydock/blob/main/.github/workflows/release.yml)
on every `v*` tag. Edit it there, not here.
