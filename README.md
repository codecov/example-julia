> Extract from https://github.com/IainNZ/Coverage.jl

## Using Codecov

[Codecov.io](https://codecov.io) is another test-coverage tracking tool that integrates with your continuous integration servers (e.g. [TravisCI](https://travis-ci.org/)) or with HTTP POSTs from your very own computer at home.

## Using Coverage.jl with Codecov.io?

1. Enable [Codecov.io](https://codecov.io) for your repository. If it is public on GitHub and you are using using TravisCI, this is all you need to do. You can sign into Codecov using your Github identity. You will be served a `REPO_TOKEN`. You'll need this if you're not using a CI solution.
2. You must be using `Julia 0.3` or higher, which added the `--code-coverage` command line argument.
3. Use the command line option when you run your tests
  * Either with something like `julia --code-coverage test/runtests.jl`, or
  * with something like  `julia -e 'Pkg.test("MyPkg", coverage=true)'`
4. Add the following to the end of your `.travis.yml` file. This line downloads this package, collects the per-file coverage data, then bundles it up and submits to Codecov. Coverage.jl assumes that the working directory is the package directory, so it changes to that first (so don't forget to replace `MyPkg` with your package's name!
```yml
after_success:
- julia -e 'cd(Pkg.dir("MyPkg")); Pkg.add("Coverage"); using Coverage; Codecov.submit(Codedov.process_folder())'
```
If you're running coverage at home and want to upload results to Codecov, make a bash script like the following:
```bash
#!/bin/bash
REPO_TOKEN=$YOUR_TOKEN_HERE julia -e 'cd(Pkg.dir("MyPkg")); using Coverage;  Codecov.submit_token(Codedov.process_folder())'
```

If you make it through that, consider adding your package to the list below.
