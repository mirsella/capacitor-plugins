---
'@capawesome/capacitor-posthog': patch
---

**fix(ios)**: Add KVC compliance check and logging for config properties. Invalid config keys now log a warning instead of being silently ignored.

**fix(web)**: Ensure explicit `host` parameter takes precedence over `config.api_host`.
