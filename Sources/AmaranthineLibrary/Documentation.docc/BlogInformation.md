#  Blog information

@Metadata {
   @TechnologyRoot
   @Available(iOS, introduced: "15.0")
   @TitleHeading("Demo")
}

More information about how this was done can be found in the blog.


## Overview

There is a complete article on how to create documentation using Swift DocC along with sample code and videos.

## Feature coverage

@Row {
   @Column {
      @Image(source: "create", alt: "Create") {
         **Feature**
      }
   }


   @Column {
      @Image(source: "find", alt: "Locate") {
         **Location**
      }
   }
}

@Row {
   @Column {
      Metadata
   }


   @Column {
      <doc:Author>, 
      <doc:LibraryInformation>
   }
}

@Row {
    @Column {
        Options
    }
        
        
    @Column {
        <doc:AmaranthineLibrary>
    }
}
    
@Row {
    @Column {
        Tip, Note, Important
    }
            
            
    @Column {
        <doc:Author>
    }
}
    
@Row {
    @Column {
        Tutorials
    }
                
                
    @Column {
        <doc:Tutorial-Table-of-Contents>, <doc:AuthorTutorial>, <doc:BookTutorial>, <doc:GenreTutorial>, <doc:UsingTheLibraryTutorial>
    }
}

@Row {
    @Column {
        Assessemnts
    }
    
    @Column {
        <doc:BookTutorial>
    }
}
    
@Row {
    @Column {
        Tabs
    }
                        
    @Column {
        <doc:BlogInformation>
    }
}

@Row {
    @Column {
        Small
    }
                        
                        
    @Column {
        <doc:AmaranthineLibrary>
    }
}
    
## Images used

@TabNavigator {
   @Tab("add") {
      ![add](add)
   }

   @Tab("assemble") {
      ![assemble](assemble)
   }
   
   @Tab("author") {
      ![author](author)
   }
   
   @Tab("book") {
      ![book](book)
   }
   
   @Tab("checkout") {
      ![checkout](checkout)
   }
   
   @Tab("create") {
      ![create](create)
   }
   
   @Tab("find") {
      ![find](find)
   }
   
   @Tab("genre") {
      ![genre](genre)
   }
   
   @Tab("library") {
      ![library](library)
   }
}

## Links

[www.arunpatwardhan.com](https://www.arunpatwardhan.com)

[www.amaranthine.in](https://www.amaranthine.in)

@Links(visualStyle: list) {
    - <doc:AuthorTutorial>
    - <doc:BookTutorial>
    - <doc:GenreTutorial>
    - <doc:LibraryTutorial>
}


@Comment {
    Dont forget to change the name of this file.
}

> Experiment: Try adding this package to a project and see if you can build a library app.

@Small {
    MIT License

    Copyright (c) 2015 Amaranthine

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
}
