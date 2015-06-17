# Transforming the Web into Data (with Python)

## Workshop Materials

This repository contains the materials for the [ULS/iSchool Digital Scholarship workshop held on Friday, April 17th 2015.](http://pitt.libcal.com/event.php?id=891193) 

There are two main documents in this repository (and a couple supporting images), the slides (*Web Scraping Tutorial.ipynb*) and an example (*Web Scraping Example.ipynb*).

These documents are stored in this repository as [IPython Notebooks](http://ipython.org/notebook.html), meaning they are JSON documents and not . The links below point to [nbviewer](http://nbviewer.ipython.org/faq) so you can read them as a normal human being and not a machine. 

If you are interested in building on top of these materials, feel free to fork this repository. You are fee to **SHARE** and **ADAPT** these mateirals as long as you **ATTRIBUTE** them as per the following creative commons license: [CC-BY 2.0](https://creativecommons.org/licenses/by/2.0/).

## Slides

These slides contain a conceptual introduction to web scraping. They can be viewed as a document or as a set of slides.

- [Presentation as an HTML document](http://nbviewer.ipython.org/github/DSSatPitt/web-scraping-workshop-2015/blob/master/Web%20Scraping%20Tutorial.ipynb)

- [Presentation as Slides](http://nbviewer.ipython.org/format/slides/github/DSSatPitt/web-scraping-workshop-2015/blob/master/Web%20Scraping%20Tutorial.ipynb#/)


## Example

This notebook contains an example web scrape using Python with some in-line documentation about what is happening at each step. 

- [Scraping the iConference 2015 Program](http://nbviewer.ipython.org/github/DSSatPitt/web-scraping-workshop-2015/blob/master/Web%20Scraping%20Example.ipynb)


# Using tmpnb, the temporary notebook service

The materials in this repository can be served to participants using the [jupyter/tmpnb service](https://github.com/jupyter/tmpnb). I've included a `Dockerfile` in this repository that can be used to build an image that contains IPython, the necesary python libraries, and the notebooks in this repository. I built an image from this `Dockerfile` and called it `jupyter/minimal` so the tmpnb service would just automatically run it because that is the name of the default image tmpnb launches for temporary notebooks. This is pretty bad documentation, if you have questions just hit me up on twitter at [@mcburton](http://twitter.com/mcburton). I'll probably write up something more comprehsive about setting up temporary teaching enviroments with tmpnb.
