# mediacat
Personal media categorizer

# Usage

```
./mediacat command [ options ] directory
  mediacat will try to infer the type the media directory is using simple heuristics and then apply options to this directory.

  commands:
    watch                  watch a directory for new sub directories to classify
    scan                   scan a directory for existing sub directories to classify
    single                 classify a single directory

  options:
    -h | --help            show help
    -v | --verbose         verbose
    -d | --dry             dry run, don't write any changes when used in conjunction with --mv option
    -t | --threshold <N>   the number of videos in a tree before it's considered a show. default: 3
    -m | --mv <dir>        move directory to media directory under <category> sub directory
    --chmod <mode>         chmod (recursively) the newly moved directory
    --chown <owner:group>  chown (recursively) the newly moved directory

  example:
    # Watch the `downloads` directory for new media directories.
    # Once one is categorized, its file mode bits are changed to 600
    # Its ownership is changed to user 1000, group 1000
    # And it is moved under the `/media` directory
    mediacat watch -v --chown 1000:1000 --chmod 600 -mv /media /downloads
```
