# ``AmaranthineLibrary/Author``

@Metadata {
    @PageColor(green)
    @DocumentationExtension(mergeBehavior: override)
}

The ``Author`` type represents the author of the book.

## Overview

![Author](author)

This type is built up using 3 properties: ``Author/name``, ``Author/email``, and ``Author/dateOfBirth``. An instance of ``Author`` is said to be unique if both the ``Author/name`` as well as the ``Author/dateOfBirth`` are unique.

## Output format for description

```shell
Author
----------
Name:       ABC
Email:      abc@mail.com
Birthday:   23 January 1998
"""
```

## Information
> Note: The ``Author/name`` and ``Author/dateOfBirth`` are deemed to be unique properties.

> Important: Requires Swift 5.x

> Tip: See the article on creating markup comments [Adding formatted Text to Swift](https://arunpatwardhan.com/2017/11/09/adding-formatted-text-to-swift-in-xcode/)

[arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)

## Topics

### Types

``Author``
