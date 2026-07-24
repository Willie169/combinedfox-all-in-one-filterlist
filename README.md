combinedfox filterlists - all in one

all-in-one filterlist combining all lists used in https://github.com/Willie169/combinedfox/wiki/my-ublock-backup.txt designed for Content Filtering of Brave for Android to not add lists one by one manually

The generators are licensed under [ISC License](LICENSE.txt).

- [filterlist.txt](filterlist.txt): The generated filterlist. You can add it to Brave Content Filtering, uBlock Origin, etc. with
    ```
    https://raw.githubusercontent.com/Willie169/combinedfox-all-in-one-filterlist/refs/heads/main/filterlist.txt
    ```
- [generator.sh](generator.sh): Bash script to generate [filterlist.txt](filterlist.txt). You can change filterlists urls in it in your fork.
- [generator.yml](.github/workflows/generator.yml): GitHub Action to generate [filterlist.txt](filterlist.txt) every 6 hours. Remember to enable GitHub Action and go to Settings > Actions > General > Workflow permissions, select Read and write permissions, and Save in your fork to use it.

