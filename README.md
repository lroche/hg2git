# Summary
The purpose of hg2git is to convert a Mercurial repository to a Git repository. 
All mechanism of conversion is based on [fast-export](https://github.com/frej/fast-export.git) tool.


# Launch conversion

    docker run -it -v ~/anyproject-hg:/work/projectname -v ~/project-result-git:/work/result lroche/hg2git projectname

or if you don't want to specifiy projectname:

     docker run -it -v ~/anyproject-hg:/work/project -v ~/project-result-git:/work/result lroche/hg2git

    
the run uses two bound volumes, one for hg source, other for git target result.
the name of project has no matter but it will be the same between /work/projectname and the argument of the command (here projectname)

# How to retrieve git conversion ?

The result of git conversion can be found behind the /work/result volume


