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
         ('Blog', '/blog_index.html'),
         )

# Social widget
SOCIAL = (('Twitter', 'http://www.twitter.com/lalorjp'),
          )

# for crowsfoot theme
TWITTER_ADDRESS = 'http://www.twitter.com/lalorjp'
GITHUB_ADDRESS = 'https://github.com/jplalor'

MENUITEMS = (
    ('home', '/'),
    ('blog', '/blog_index.html'),
    ('cv', '/pdfs/cv.pdf'),
)

DEFAULT_PAGINATION = 10

INDEX_SAVE_AS = 'blog_index.html'

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True

SITEURL = 'http://jplalor.github.io'

THEME = '/home/lalor/projects/pelican-themes/crowsfoot'

GOOGLE_ANALYTICS = 'UA-47968906-2'

USER_LOGO_URL = 'images/me.jpg'
PROFILE_IMAGE_URL = 'images/me.jpg'

SHOW_ARTICLE_AUTHOR = False
DISPLAY_PAGES_ON_MENU = False

STATIC_PATHS = ['images', 'pdfs', 'files']

PLUGIN_PATHS = ['/home/lalor/projects/pelican-plugins']
PLUGINS = ['render_math']

