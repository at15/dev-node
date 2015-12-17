# Setup Hadoop

- copy all the example config in `config/hadoop`, ie `core-site.example.xml` -> `core-site.xml`
- uncomment the `hadoop.tmp.dir` part for ubuntu, pick to folder that won't get erased when restart
- change `JAVA_HOME` in `hadoop.env.sh` to use absolute path

- download
- setup
- start

- config and copy are called by other scripts.

TODO: setup ssh and ssh localhost