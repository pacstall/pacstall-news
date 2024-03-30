# Contributing

If you're here, you're probably a package maintainer or a Pacstall dev.

## Making a news post
First step is to fork the repo, then make `_posts/YYYY-MM-DD-short-name.md`, and next we can move onto how to set this file up.

### Layout

#### Front Matter
Next you to make the front matter, which is formatted like this:

```md
---
layout: post
title: "[prefix]: title"
date: $date
tags: [$tags]
author: $github_username
---
```

For prefix, you have the following options:

- `pkg:$pkg_name` where pkg_name is the package in question.
- `pacstall` reserved for Pacstall releases.
- `repo` reserved for repo information.

To generate `date`, run:
```bash
date +"%Y-%m-%d %T %z"
```

For tags, you have the following tags, which can be formatted into a yaml array:

- `release` reserved for Pacstall releases.
- `important` is reserved for extremely important information.
- `package-notice` for package notices such as important information for users, delays in releases, explainations certain pacscript features, etc.

#### Body
Then you can write your news post. Make sure to be descriptive! When writing, we do have a couple styling rules, listed below.

##### Styling Rules
###### Reference Links
Links should not look like this:
```md
Here is [my link](https://example.com)
```

They should instead look like this:
```md
Here is [my link][my-link]

(... bottom of page ...)

[my-link]: https://example.com "Example Website"
```

###### Code Blocks
Code blocks should not look like this:

    ```language
    hello this is my language
    ```

They should instead look like this:
```md
{% highlight language %}
hello this is my language
{% endhighlight %}
```

## Adding a tag
To add a new tag to the site, create a new file in `tag/` where the name of the file is the name of the tag, then add the following front matter:

```md
---
layout: tagpage
title: "Tag: $name"
tag: $name
---
```

Where `$name` is the name of the file/tag.
