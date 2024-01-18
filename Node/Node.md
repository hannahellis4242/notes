# Node

These notes go along with the node crash course videos that are on the knowledge base.

## Setting Up

### Editors

You will need an editor for this course if you wish to follow along with the videos.
Provided below are links to some of the more popular editors.

- [Visual Studio Code](https://code.visualstudio.com/).
- [Atom](https://atom-editor.cc/)
- [Sublime Text](https://www.sublimetext.com/)

I personally recommend Visual Studio Code (as it's the editor I use in the videos) but feel free to use any editor you prefer, including one that's not listed here.

## Using Node

### Installing Node

You can download and install node [here](https://nodejs.org/en)

### What is Node

Node is a JavaScript engine very similar to the one built into your browser that parses and runs JavaScript from a website. Node however runs on your system rather than your browser, so it can do some things that your browser can't (such as process command line arguments and read files off your machine) but it also can't do something that your browser can (for example making a button submit a form on a website). Node even uses the V8 JavaScript Engine, which is the same JavaScript parsing engine that the Chrome Browser uses.

Node offers a way for developers more familiar with front end coding (ie JavaScript for a website) to write backend services or other programs.

### Setting up a Node Project

Node comes with it's own package manager, the _node package manager_ or _npm_ for short.

As well as managing the packages in your project _npm_ can do some extra things. Importantly for us, you can use it to set up a blank project.

Use you terminal and navigate to the directory you wish to put your project in. Once you are there, you can put in the command

``` bash
npm init
```

_npm_ will then ask you a series of questions about your project (you can just press enter to get the default answer if you aren't sure how to answer). Once you have done this, you will have a _project.json_ file in your directory. This file keeps a record of the packages you are using in your project as well as any scripts for _npm_ to run. We will talk about scripts more later but you will see the default test script in this file.

Additionally if you want to just accept the default answers when creating a new project you can use the _-y_ flag.

```bash 
npm init -y
```

You should remember the npm command, you'll be using it a lot in this course and any time you work with a node project.

### Your First Node Program

Hello World is a typical starting point for many developers (and even the starting point for some projects)

### Introducing Typescript

