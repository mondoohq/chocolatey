# chocolatey

Chocolatey is a popular package manager for Windows, similar to Homebrew.  This repository generates and updates "NuPKG" packages for Chocolately.

View our published packages here: 
View our packages pending moderation here: 


# Building Packages

The basic process is simple:

```
choco apikey --key ${CHOCO_API_KEY} --source https://push.chocolatey.org/
choco pack
choco push 
```

To avoid using Windows, instead use a Docker container which runs Choco thanks to Mono.  Here is a complete example of using it to pack and push:

```
$ docker run -v `pwd`:/packages -ti  chocolatey/choco bash
root@0ac102431698:~# cd /packages/cnquery

### Configure the APIKEY and Source
root@0ac102431698:/packages/cnquery# CHOCO_API_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
root@0ac102431698:/packages/cnquery# choco apikey --key ${CHOCO_API_KEY} --source https://push.chocolatey.org/
Chocolatey v1.3.0
Added ApiKey for https://push.chocolatey.org/


### Now Pack
root@0ac102431698:/packages/cnquery# choco pack
Chocolatey v1.3.0
Attempting to build package from 'cnquery.nuspec'.
Successfully created package '/packages/cnquery/cnquery.8.0.0.nupkg'


### Finally, Push
root@0ac102431698:/packages/cnquery# choco push
Chocolatey v1.3.0
Attempting to push cnquery.8.0.0.nupkg to https://push.chocolatey.org/
cnquery 8.0.0 was pushed successfully to https://push.chocolatey.org/
```

# About the API-Key

Our packages are downed and published by the ['mondoo'](https://community.chocolatey.org/profiles/mondoo) user, with the email/login of 'hello@mondoo.com'.  The password is in BitWarden's 'Development' Collection entitled: "Chocolatey Mondoo User & API Key".  You can find the API Key here: https://community.chocolatey.org/account

If you rotate the API key, be sure to update the CHOCOLATEY_API_KEY secret in this repo.

# Learn more

* [Chocolatey Guide: Running on Non-Windows Systems](https://docs.chocolatey.org/en-us/guides/non-windows)
* [Chocolatey Guide: Package Creation](https://docs.chocolatey.org/en-us/create/)