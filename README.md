# ⚙️🚀 Actions

Reusable GitHub Actions, composite actions and workflows maintained by the data-matching-service team.

See each Action for guidance on using them.

## Using actions

Point any GitHub Action step to the directory that contains `actions.yml`.

We strongly recommend [pinning the commit hash to avoid supply chain attacks](https://codeql.github.com/codeql-query-help/actions/actions-unpinned-tag/).

```yml
- name: Notify PR creator
  if: github.event_name == 'pull_request'
  uses: uktrade/actions-data-matching/setup-toolchain@391834c3900a1a071dc57d35f6e13c0e5acbe1c0  # v0.4.0
```

See [GitHub's own guidance](https://docs.github.com/en/actions/reference/security/secure-use) for more information.

## Contributing

[pre-commit](https://pre-commit.com/) is mandatory and must be turned on.

```bash
pre-commit install --install-hooks --overwrite -t commit-msg -t pre-commit
```

This repo uses [`just`](https://just.systems/man/en/) as its task runner.

Install [`act`](https://nektosact.com/installation/gh.html) for running and testing GitHub Actions locally. We assume you installed it as a GitHub CLI extension. `gh act` is used to power `just test`.

Install [`actionlint`](https://github.com/rhysd/actionlint) for linting and formatting GitHub Actions. This is used to power `just format`.

Each action lives in its own directory containing an `action.yml` and a `README.md`.

In order to avoid supply chain attacks, we [pin all actions in workflows](https://codeql.github.com/codeql-query-help/actions/actions-unpinned-tag/).

Each action should have tests in `.github/workflows/`, and `ci.yml`'s `ci-success` should depend on it.

### Updating

When updating actions, we expect PR comments to confirm that the new commit is safe. You need to cover:

* That the commit's `action.yml` only uses pinned child actions, if it has children
* That there are no critical security concerns raised in the issues

See [matchbox#395](https://github.com/uktrade/matchbox/pull/395) for an example of the due diligence we expect.

## Releasing

Use the [GitHub releases feature](https://github.com/uktrade/actions/releases/new) to cut a new release.
