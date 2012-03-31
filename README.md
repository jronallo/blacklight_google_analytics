# Blacklight Google Analytics

A gem plugin which adds support for Google Analytics and event tracking to a 
[Blacklight](http://projectblacklight.org/) Rails application.

# Installation

1. Install [Blacklight](https://github.com/projectblacklight/blacklight) using the
  [Quickstart guide](https://github.com/projectblacklight/blacklight/wiki/Quickstart).
2. Add `gem 'blacklight_google_analytics'` to your `Gemfile`
3. Run the generator: `rails g blacklight_google_analytics`
4. Edit `config/initializers/blacklight_google_analytics.rb` to include your own Google Web id.
  You will need a [Google Analytics account](http://www.google.com/analytics/) and
  profile.

# Usage

Google Analytics tracking code is only turned on in production. Both page tracking
and Blacklight-specific event tracking is turned on.

In development Google Analytics tracking is turned off. Tracking parameters are
sent to the browser's console to allow you to see what parameters will
be sent to Google Analytics for various actions. 

Here's an example of event tracking. This is the output to the browser console 
when clicking on the Format facet,
selecting the "Book" facet value, and then removing it:

```
["facets", "collapse_expand", "Format"]
["facets", "Format", "Book"]
["facets", "Format", "[remove]"]
```

These parameters are the category, action, and label according to the Google
Analytics [event tracking documentation](http://code.google.com/apis/analytics/docs/tracking/eventTrackerGuide.html).
This event tracking information shows up in Google Analytics under Content > Events.

# Customizing Blacklight for event tracking

You can add other links (e.g. `a` elements) to the page and they will be tracked
automatically. If you give your link an `id` attribute, that will be used for
the category. Otherwise, parent elements will be searched for an `id` attribute
to use as the category.

You may also add your own jQuery click handlers to add more event tracking. 
Look at the current handlers to see how to set up a tracking event and enable
console.log in development.

# Author

Jason Ronallo

Based on [code from Brian Cray](http://briancray.com/2009/12/29/understanding-user-behavior-google-analytics-event-tracking-jquery/).

# Copyright

Copyright © 2012 North Carolina State University. See MIT-LICENSE for details.

