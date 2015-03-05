# Hadoop YARN 3.0.0 Release Notes

These release notes include new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.7.0

* [YARN-3199](https://issues.apache.org/jira/browse/YARN-3199) | Minor |  (fairscheduler) | Fair Scheduler documentation improvements
* [YARN-3168](https://issues.apache.org/jira/browse/YARN-3168) | Major |  (documentation) | Convert site documentation from apt to markdown
* [YARN-3002](https://issues.apache.org/jira/browse/YARN-3002) | Major |  (documentation) | YARN documentation needs updating post-shell rewrite
* [YARN-2980](https://issues.apache.org/jira/browse/YARN-2980) | Major |   | Move health check script related functionality to hadoop-common
* [YARN-2796](https://issues.apache.org/jira/browse/YARN-2796) | Major |  (scripts) | deprecate sbin/yarn-daemon.sh
* [YARN-2525](https://issues.apache.org/jira/browse/YARN-2525) | Minor |  (scripts) | yarn logs command gives error on trunk
* [YARN-2472](https://issues.apache.org/jira/browse/YARN-2472) | Major |   | yarn-daemons.sh should just call yarn directly
* [YARN-2438](https://issues.apache.org/jira/browse/YARN-2438) | Major |  (scripts) | yarn-env.sh cleanup
* [YARN-2437](https://issues.apache.org/jira/browse/YARN-2437) | Major |  (scripts) | start-yarn.sh/stop-yarn should give info
* [YARN-2436](https://issues.apache.org/jira/browse/YARN-2436) | Major |  (scripts) | yarn application help doesn't work
* [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | Trivial |  (nodemanager) | LCE default banned user list should have yarn

The user 'yarn' is no longer allowed to run tasks for security reasons.

* [YARN-1471](https://issues.apache.org/jira/browse/YARN-1471) | Minor |   | The SLS simulator is not running the preemption policy for CapacityScheduler
* [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | Minor |  (api) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL


