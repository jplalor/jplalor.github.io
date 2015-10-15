#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'John Lalor'
SITENAME = u'John Lalor'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'America/New_York'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Academic Page', 'https://people.cs.umass.edu/~lalor/'),
         )

# Social widget
SOCIAL = (('Twitter', 'http://www.twitter.com/lalorjp'),
          )

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

SITEURL = 'http://localhost:8000'

THEME = '/home/lalor/code/jplalor/pelican-themes/svbhack'

GOOGLE_ANALYTICS = 'UA-47968906-2'

USER_LOGO_URL = SITEURL + '/images/me.jpg'



