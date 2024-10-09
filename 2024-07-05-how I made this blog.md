---  
date: 2024-07-05 22:17:21 +0200  
blog: true  
layout: post  
title: how I made this blog  
---  
Published on **2024-07-05**.  
  
I felt stupid to take so long a time to set up this blog.  The tech part, I mean. I did blogs before, but always using some CMS systems, or using own servers.  And knowing how vulnerable both approaches are, I decided to go mainstream and use github pages. Done that before, but always based on other people's templates, automations, etc.  
  
The thought was easy, and getting it go was quick.  After finding Jekyll (as good as any other static pages approach), and learning how it integrates with github pages, the principle was done in an hour or so.  The [github manuals](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll) are excellent.  
  
But then, of course, I started needing more than the vanilla version.  One main thing was, I wanted to run my blog completely out of Obsidian.  Well... there's a plugin for that, of course. And I needed design adaptations.  And more.  
  
So there you go.  Here is what I did.    
  
### part 1: setting up github  
For historical reasons I have this running on github, rather than any of its competitors.   
  
The first step is setting up the repo, and then have github create the static HTML from the Markdown sources.  Github pages is your friend, and I followed instructions as written in https://docs.github.com/en/pages/quickstart.  
  
The pipeline works like this: you put your markdown source files in a predefined spot, and after setting up some parameters, github translates these to static HTML pages which are served on `<yourhandle>.github.io`.   
  
The way it is setup by default, the source can be either a directory `docs/` in the `main` branch, or a separate branch.  
  
Since I wanted integration with Obsidian and a clean interface, I decided for the branch solution. That way, my source markdown files are in my main branch in Obsidian, and the version that goes into github pages in another branch.  
  
Basically, these were my steps, performed on https://github.com:  
1. create the github repo `<yourhandle>.github.io`  
2. create a second branch `gh-pages`  
3. In the "Code and automation" section of the Settings sidebar, click  **Pages**.  
4. Under "Build and deployment", under "Source", select **Deploy from a branch**.  This I will change later!  
5. Under "Build and deployment", under "Branch", use the branch dropdown menu and select `gh-pages` as publishing source.  
  
I said "this I will change later".  I will, so that I can use my "own" design, templates, etc.  
  
### part 2:  install jekyll  
This is only needed if you want to serve on your local machine, so as to check before you serve.  Makes a lot of sense.  
  
On Mac, I did the following:  
```bash  
brew install chruby ruby-install  
ruby-install # check what the latest version is  
ruby-install 3.3.1  
gem install jekyll bundler  
```  
  
Then following https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll:  
```sh  
jekyll new --skip-bundle --force .  
bundle exec jekyll serve  
```  
  
and that last command runs a webserver on https://localhost:4000/.  
  
### part 3: get Enveloppe running  
This Obsidian plugin gets your local files served on your webserver -- of course, only those files in your vault which you specify.  
  
Enveloppe (previously known as github publisher) is a wonderful, powerful Obsidian plugin.  And I found it not easy to understand how to set it up well.  
  
These are the settings I found working for me.  I refer to the tabs of the settings pane in italics:  
1. under _Github Config_, set the main branch to `gh-pages` and set 'Automatically merge pull requests' on.  
2. under _File Paths_, set auto clean up and self-cleaning of attachments on  
3. under _Content_, define the following replacements in Text Replacer: `/<yourhandle>.github.io\/assets/` to/assets` and `/./assets/` to `/assets`.  This is needed to make figures work.  
4. also under _Content_, switch on `[Wikilinks](Wikilinks.md) to [MDlinks](links)` and `Internal Links`  
5. under _Attachments & Embeds_, in Override Attachment Paths, set replace text `/.*<yourhandle>.github.io\/(.*)/` to `$1`.   
6. also under _Attachments & Embeds_, select Send linked files, Transfer attachments, Structure, and Transfer embedded notes.  
  
I saved my settings for Enveloppe in [[enveloppe.json]]. You can load this in the plugin, and adapt from there.  
  
### part 4: adapt your theme  
  
None of the standard jekyll github themes were to my liking; I quickly found just-the-docs, and decided that to be my theme.  With some adjustments, of course.  
  
And that lead to an adapted setup, which I realised as follows:  
1. create a number of files to specify the theme, as well as Jekyll scripts. I gathered these files in [repo.tgz](assets/2024-07-05/repo.tgz). In particular, these contain:  
		- `.gitignore`  
		- the scripts in `.github/workflows/ci.yml` and `.github/workflows/pages.yml`  
		- the html navigation in `_includes/components/` and the sorting, including extra code for books sorting, in `_includes/sorted_pages.html`  
		- a layout for books in `_layouts/book.html`  
		- conversion of links in md files to html in `_plugins/convert_links.rb`  
		- some personal colour suppression in `_sass/color_schemes/greyish.scss`  
		- and finally, the Ruby `Gemfile` which controls how Jekyll runs.  
2. put all of these in the branch `gh-pages`, and push the result  
3. on github, under settings / pages  set the 'Build and deployment' source to 'github actions'  
  
Done.  
  
(Not nice: for this blog post, I had to manually upload the file `repo.tgz` in the `gh-pages` branch.  Looks like Enveloppe does not deal with that, with my current settings.)