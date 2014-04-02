# Glue to create presentation from markdown files.

The markdown files are concatenated and presented using [remark](https://github.com/gnab/remark).

The glue script parses the markdown files inside _slides_ directory alphabetically and concatenates them. The concatenated markdown content is inserted into _presentation.html.template_ to give the final output _presentation.html_. You can view _presentation.html_ in your browser.

Steps
-----

* Install ruby

* Clone the repository

```shell
git clone https://github.com/chiku/presentation.git
cd presentation
```

* Install dependencies using bundler

```shell
bundle install
```

* Create slides inside _slides_ directory
  * The slides must be in markdown format with file-extension __.markdown__
  * Each file will become a slide of its own
  * The final slides will be ordered alphabetically based on the file names

* Run `rake` to create _presentation.html_

```shell
bundle exec rake
```

* Open _presentation.html_ in the browser of your choice OR serve over HTTP.

```shell
bundle exec rackup
# visit http://localhost:9292
```

License
-------

This tool is released under the [MIT license](https://github.com/chiku/presentation/blob/master/LICENSE). Please refer to LICENSE for more details.

remark is released under [MIT license](https://github.com/gnab/remark/blob/develop/LICENSE).
