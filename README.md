### Munin plugins for TP-Link TD-W9970.
#### This was based on [Adam Smith's HG612 plugins](https://github.com/bugmancx/huawei-hg612-munin).
These may work with other TP-Link routers but have only been tested on a TD-W9970 with VDSL2 connection.

##### Installation
1. Download the plugins

    ```shell
    cd /etc/munin
    git clone https://github.com/Phoenix09/TP-Link_TD-W9970-munin
    ```

2. A cron job must be set up to run every 5 minutes and the user running `getstats.sh`
must be able to write to `/var/lib/munin/plugin-state/TP-Link_TD-W9970-munin-output.txt`.
This script was configured to be run from `/etc/munin/TP-Link_TD-W9970-munin`.
If you need to use a different directory you may need to modify the scripts to suit.

    ```shell
    ln -s /etc/munin/TP-Link_TD-W9970-munin/crontab /etc/cron.d/TP-Link_TD-W9970-munin
    ```

3. If you wish to enable any of the plugins, create a symlink for each one in
the munin plugins directory. Or, copy and paste the following:

    ```shell
    ln -s /etc/munin/TP-Link_TD-W9970-munin/plugins/TD-W9970_* /etc/munin/plugins
    ```

4. The `TD-W9970.expect` script is configured to connect to 192.168.1.1 and use
the default username and password. If this isn't what you want, simply modify
the expect script.
