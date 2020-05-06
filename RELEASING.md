# Releasing

1. Update version.rb file accordingly.
2. Tag the release: `git tag vVERSION`
3. Push changes: `git push --tags`
4. Build and publish:

```bash
bundle exec rake build
gem push pkg/sevenwire-rubocop-X.XX.XX.gem
```
