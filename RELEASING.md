# Releasing

1.  Update version.rb file accordingly.
1.  Tag the release: `git tag vVERSION`
1.  Push changes: `git push --tags`
1.  Build and publish:

```bash
bundle exec rake build
gem push pkg/sevenwire-rubocop-X.XX.XX.gem
```
