___
PROGRAMS:
duplicity - only does backup
https://restic.net/
___


https://www.backblaze.com/b2/docs/quick_command_line.html


https://help.backblaze.com/hc/en-us/articles/217664628-Is-Backblaze-going-to-offer-Linux-support-
check open source and commercial apps
backblaze 

There are a variety of options for using Linux with B2. These include open-source (free) and commercial applications, command-line (CLI) and graphical interface (GUI) tools, and tools that include encryption, automation, hybrid NAS/B2 support, mounting remote archives as volumes, and other capabilities.

Backblaze also offers an API that can be used to create your own tools that work with B2. That information can be found here: [https://www.backblaze.com/b2/docs/](https://www.backblaze.com/b2/docs/)

There also is a B2 command line tool that can be used to upload data, and used in scripts to upload data on a schedule. The information on how to install the B2 command line tool is here: [https://www.backblaze.com/b2/docs/quick_command_line.html](https://www.backblaze.com/b2/docs/quick_command_line.html)


Linux-based tools that support B2 include Duplicity, MSP360, qBackup, GoodSync, HashBackup, Duplicacy, and Restic, with more coming. Other options are available for B2 that include NAS support and hybrid solutions.

You can read about third-party tools that support B2 at [https://www.backblaze.com/b2/integrations.html.](https://www.backblaze.com/b2/integrations.html)

Seafile, nextcloud, resilio sync, 

#### **Duplicity and Restic Tutorials**

If you are interested in Duplicity or Restic, we've written articles on how to configure them for use with B2:

**Duplicity**: [https://help.backblaze.com/hc/en-us/articles/115001518354](https://help.backblaze.com/hc/en-us/articles/115001518354)

**Restic**: [https://help.backblaze.com/hc/en-us/articles/115002880514-How-to-configure-Backblaze-B2-with-Restic-on-Linux](https://help.backblaze.com/hc/en-us/articles/115002880514-How-to-configure-Backblaze-B2-with-Restic-on-Linux)


https://wiki.archlinux.org/title/Duplicity

___
backblaze backupp apps:
https://wiki.archlinux.org/title/Duply tui tool for duplicity

http://duplicity.nongnu.org/docs.html


backup using duplicity on linux:
https://help.backblaze.com/hc/en-us/articles/115001518354-How-to-configure-Backblaze-B2-with-Duplicity-on-Linux

https://www.loganmarchione.com/2017/07/backblaze-b2-backup-setup/


https://www.reddit.com/r/backblaze/comments/btc4md/cant_locate_account_id/
remember keyID is account ID


___
SYNC solution:
https://www.reddit.com/r/DataHoarder/comments/a56b24/wasabi_as_a_backup_solution/
https://www.reddit.com/r/DataHoarder/comments/jrfjwd/simple_cloud_storagesync_solution_for_multiple/
https://www.reddit.com/r/DataHoarder/comments/3anywc/need_some_help_looking_for_best_noncloud_based/


___
https://www.reddit.com/r/DataHoarder/comments/6gc39u/backblaze_personal_vs_b2_whats_the_difference/
Backblaze personal is going to sync your hard drive contents to their servers and keep everything on their servers 30 days after a file is deleted on your local computer.

B2 is more of a backup since there is no data retention settings in place ( unless you use theirs that they have available ). With B2 you are able to use other clients like rclone and such to push and pull data. Unlike personal where you can only use their app. B2 will also charge you for retrieval of your data if you choose to restore it from cli or whichever. So if you are going to restore data a lot of it could cost you money. So yeah, B2 is better then personal for the majority of things, especially if you are running a headless server.