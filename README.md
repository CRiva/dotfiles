# Connor’s dotfiles

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want, just be sure that there is a symlink to `~/dotfiles` otherwise the scripts will fail. 
(For example, cloning the repo to `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.)

Or you can just clone to your home directory. (`/Users/username/` for MacOS.)

```bash
git clone https://github.com/CRiva/dotfiles.git && cd dotfiles
```

To run a complete setup, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap_and_setup.sh
```

Alternatively, to just setup, run:

```bash
./setup.sh
```

Note: the setup might fail unless the bootstrapping process has been completed at least once.


## Feedback

Suggestions/improvements
[welcome](https://github.com/CRiva/dotfiles/issues)!

## Author

| [Connor Riva](https://connorriva.com/) |

## Thanks to…

* [Mathias Bynens](https://mathiasbynens.be/) for his [dotfiles repo](https://github.com/mathiasbynens/dotfiles)
* [David Lundgren](http://davidscode.com/) for his [dotfiles repo](https://github.com/dlundgren/dotfiles) and it's use of [ansible playbooks](https://www.ansible.com/).  