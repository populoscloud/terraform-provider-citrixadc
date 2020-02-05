Terraform `citrixadc` Provider
=========================

- Website: https://www.terraform.io
- [![Gitter chat](https://badges.gitter.im/hashicorp-terraform/Lobby.png)](https://gitter.im/hashicorp-terraform/Lobby)
- Mailing list: [Google Groups](http://groups.google.com/group/terraform-tool)

<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

Maintainers
-----------

This provider plugin is maintained by the Terraform team at [HashiCorp](https://www.hashicorp.com/).

Requirements
------------

-	[Terraform](https://www.terraform.io/downloads.html) 0.10.x
-	[Go](https://golang.org/doc/install) 1.11 (to build the provider plugin)
-	[go-nitro](https://github.com/chiradeep/go-nitro)

Building The Provider
---------------------

Clone repository to: `$GOPATH/src/github.com/terraform-providers/terraform-provider-citrixadc`

```sh
$ git clone git@github.com:terraform-providers/terraform-provider-citrixadc $GOPATH/src/github.com/terraform-providers/terraform-provider-citrixadc
```

Enter the provider directory and build the provider

```sh
$ cd $GOPATH/src/github.com/terraform-providers/terraform-provider-citrixadc
$ make build
```

Using the provider
----------------------

This project is a terraform custom provider for Citrix ADC. It uses the [Nitro API](https://developer-docs.citrix.com/projects/netscaler-nitro-api/en/12.0/) to create/configure Citrix ADC instances

**Important note: The provider will not commit the config changes to Citrix ADC's persistent
store. Please see this [example](examples/nscommit) on the suggested way to do this.**

### Provider Configuration

```
provider "citrixadc" {
    username = "${var.ns_user}"
    password = "${var.ns_password}"
    endpoint = "http://10.71.136.250/"
}
```

We can use a `https` URL and accept the untrusted authority certificate on the Citrix ADC by specifying `insecure_skip_verify = true`

### Argument Reference

The following arguments are supported.

* `username` - This is the user name to access to Citrix ADC. Defaults to `nsroot` unless environment variable `NS_LOGIN` has been set
* `password` - This is the password to access to Citrix ADC. Defaults to `nsroot` unless environment variable `NS_PASSWORD` has been set
* `endpoint` - (Required) Nitro API endpoint in the form `http://<NS_IP>/` or `http://<NS_IP>:<PORT>/`. Can be specified in environment variable `NS_URL`
* `insecure_skip_verify` - (Optional, true/false) Whether to accept the untrusted certificate on the Citrix ADC when the Citrix ADC endpoint is `https`
* `proxied_ns` - (Optional, NSIP) The target Citrix ADC NSIP for MAS proxied calls. When this option is defined, `username`, `password` and `endpoint` must refer to the MAS proxy.

The username, password and endpoint can be provided in environment variables `NS_LOGIN`, `NS_PASSWORD` and `NS_URL`. 

Developing the Provider
---------------------------

If you wish to work on the provider, you'll first need [Go](http://www.golang.org) installed on your machine (version 1.11+ is *required*). You'll also need to correctly setup a [GOPATH](http://golang.org/doc/code.html#GOPATH), as well as adding `$GOPATH/bin` to your `$PATH`.

To compile the provider, run `make build`. This will build the provider and put the provider binary in the `$GOPATH/bin` directory.

```sh
$ make build
...
$ $GOPATH/bin/terraform-provider-citrixadc
...
```

In order to test the provider, you can simply run `make test`.

```sh
$ make test
```

In order to run the full suite of Acceptance tests, run `make testacc`.

*Note:* Acceptance tests create real resources, and often cost money to run.

```sh
$ make testacc
```
