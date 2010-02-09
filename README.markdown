**IMPORTANT NOTE:** These guides are currently pretty much a blank slate/virgin snow :) This is a great opportunity to get off on the right foot, and to set the standards for excellent quality FubuMVC documentation. I strongly suggest browsing and learning from the the [Spree-Guides](http://spreecommerce.com/documentation/) project. They've been through many iterations and the quality of their documentation is very high. It's mainly down to their evolved processes (seee the "contributing" page, which explains all that). --Tobin

SUMMARY
=======

This project serves as the basis for the online documentation effort for the [FubuMvc project](http://fubumvc.com).  

The documentation has been graciously donated by members of our online community.  This work is licensed under the [Creative Commons Attribution-Share Alike 3.0 ](http://creativecommons.org/licenses/by-sa/3.0/) license.  

Contributions are encouraged.  Please ask [Chad Myers](http://www.lostechies.com/blogs/chad_myers/) for commit access if you have something to contribute.  If you are thinking about a new guide or major changes to the organisation of the existing guides, please be courteous and do this in your own fork so it can be discussed before merging. 
                                                   
The guides are written in [Textile]() and there is information on the [fubumvc-guides wiki](http://wiki.github.com/tobinharris/fubumvc-guides) on the general style to use when writing a guide.  Please stick to the established format and feel free to ask questions on [fubumvc-devel](http://groups.google.com/group/fubumvc-devel) or #fubumvc if you have any questions. 

## How To Generate The Guides

To build the entire set of guides simply run the following command:

<pre><code>
  $ git clone git://github.com:tobinharris/fubumvc-guides.git
  $ cd fubumvc-guides
  $ rake guides
</code></pre>

Running `rake guides` will generate the guides into the `output` directory.

## Not Got Ruby?

You'll need to download the Ruby One Click Installer ([direct download .exe link](http://rubyforge.org/frs/download.php/29263/ruby186-26.exe)).
            
You will also need to install the RedCloth gem (4.1.1 or greater) if you have not done so by typing `gem install RedCloth`.  

## Contributing

You do not need to fork the fubumvc-guides project in order to contribute.  Just send an email to [fubumvc-devel](http://groups.google.com/group/fubumvc-devel) (be sure to include your github username) and say that you would like to contribute.  We'll add you to the list so you can commit directly to the guides project.  

Please be considerate when making changes to the fubumvc-guides.  If you wish to make major changes to how the documentation is organized then you should use a GitHub fork and ask people to review your proposed changes instead.
