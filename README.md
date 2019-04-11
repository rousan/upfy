<h3 align="center">
  <br>
	<br>
  <a href="https://github.com/rousan/upfy">
    <img src="https://raw.githubusercontent.com/rousan/upfy/master/logo.png" alt="Logo" title="Upfy" height="150">
  </a>
</h1>
<p align="center">Upfy</p>
<p align="center">`curl -s https://raw.githubusercontent.com/rousan/upfy/master/up.sh  | bash`</p>
<br>

# Upfy

Whenever I create a computing engine/container (e.g. Docker, AWS, GCP), I needed to copy some repeated commands
or aliases to that fresh system. So, I ended up developing this script as such other developer might find it helpful.

> A bash script to populate a fresh unix system with repeated commands and aliases.

## Usage

Run the following command to up any unix-like system with useful aliases and commands:

```bash
$ curl -s https://raw.githubusercontent.com/rousan/upfy/master/up.sh  | bash
```

Note: Please find the scripts folder to know more about commands and aliases being added.

## Build

After adding scripts just run following command to zip all the scripts:

```bash
./build.sh
```

## Contributing

I welcome open source community to add more useful scripts and aliases to make it more powerful tool. You need to
populate your scripts to the `scripts` folder and add the entry to `scripts/main.sh` file and after adding just run
`./build.sh` to make the `dist/scripts.zip` file which is our distributable file.
