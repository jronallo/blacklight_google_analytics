# Blacklight Google Analytics

A gem plugin which adds support for Google Analytics and event tracking to a 
[Blacklight](http://projectblacklight.org/) application.

# Installation

1. [Install Blacklight](https://github.com/projectblacklight/blacklight)
2. Add `gem 'blacklight_google_analytics'` to your `Gemfile`
3. Run the generator: `rails g blacklight_google_analytics`
4. Edit `config/initializers/blacklight_google_analytics.rb` to include your own Google Web id.

# Usage

Google Analytics tracking code is only turned on in production. In development
tracking is sent to the console log to allow you to see what parameters will
be sent to Google Analytics.

Here's example output to the browser console when clicking on the Format facet,
selecting the "Book" facet value, and then removing it:

```
["facets", "collapse_expand", "Format"]
["facets", "Format", "Book"]
["facets", "Format", "[remove]"]
```

# Author

Jason Ronallo

# Copyright

Copyright © 2012 North Carolina State University. See MIT-LICENSE for details.

