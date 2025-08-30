Terraform check:
```
    $ terraform init

    Initializing the backend...

    Initializing provider plugins...
    - Finding hashicorp/google versions matching "~> 4.0"...
    - Installing hashicorp/google v4.85.0...
    - Installed hashicorp/google v4.85.0 (signed by HashiCorp)

    Terraform has created a lock file .terraform.lock.hcl to record the provider
    selections it made above. Include this file in your version control repository
    so that Terraform can guarantee to make the same selections by default when
    you run "terraform init" in the future.

    Terraform has been successfully initialized!

    ---

    $ terraform validate
    Success! The configuration is valid.

    ---
```

Note: 
- The code hasn't yet been tested, but the overview can already be seen on the terraform.