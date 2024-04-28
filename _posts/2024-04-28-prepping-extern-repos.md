---
layout: post
title:  "[repo]: 5.0.0 Conversion for unoffical repos"
date:   2024-04-28 18:40:18 -0500
tags: ["important"]
author: Elsie19
---

As we are getting ever closer to 5.0.0, other unoffical repositories should know how to mass update their repo to the 5.0.0 standard. First, download [the conversion script][conversion-script], and remove the final line, the one with the curl (this is for our repo and our edge cases which probably aren't in yours). Move that download into your repository root, and run `bash ./pac5-conv.sh`. Once that's done, run `rm ./pac5-conv.sh`. You should now manually inspect every file and check for irregularities, but if you have a fairly standard pacscript repo (no nonstandard/hacky methods), there should be none. Then you can commit the changes and push. If you have *any* issues, please go to [our issue feed][issue-feed] and file an issue explaining your issue with conversion and we'll help.


[conversion-script]: https://raw.githubusercontent.com/oklopfer/debs/master/misc/pac5-conv.sh "The raw link to our conversion script"
[issue-feed]: https://github.com/pacstall/pacstall-programs/issues "Pacstall programs issue page"
