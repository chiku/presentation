# Simple glue to create presentation from markdown files.

The markdown files ar converted to HTML using redcarpet. The HTML is displayed as a presentation using Slidy2. Highlight.js is used for syntax higlighting of code.

The glue script parses the markdown files inside _slides_ directory alphabetically and converts them to HTML. The HTML is inserted into _presentation.html.template_ to give the final output _presentation.html_. You can view _presentation.html_ in your browser.

Steps
-----

* You need to have ruby installed on the system

* You should also install the markdown gem

```shell
[sudo] gem install markdown
```

* Clone the repository

```shell
git clone https://github.com/chiku/presentation.git
```

* Create slides inside _slides_ directory
  * The slides must be in markdown format with file-extension __.markdown__
  * Each file will become a slide of its own
  * The final slides will be ordered alphabetically based on the file names

* Run `rake` from the project directory to create _presentation.html_

* Open _presentation.html_ in the browser of your choice

License
-------

This tool is released under the MIT license. Please refer to LICENSE for more details.

Slidy2 and highlight are released under their own respective licenses.
