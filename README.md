When cloning this repo, use `git clone --recursive`

To add a new vim bundle:

    git submodule add https://github.com/BLAH bundle/BLAH

If `--recursive` didn't work:

    git submodule update --init

To update everything:

    git submodule foreach git pull origin master
