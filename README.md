
<h2>Improving Structure from Motion with Reliable Resectioning</h2>

<b>Authors:</b> [Rajbir Kataria](https://rajbirkataria.com/), [Joseph DeGol](http://www.josephdegol.com/), [Derek Hoiem](http://dhoiem.cs.illinois.edu/) <br/><br/>

![](Improving%20Structure%20from%20Motion%20with%20Reliable%20Resectioning%20-%20Main%20Result.png?raw=true)

[<b>Paper</b>](https://github.com/rajkataria/ReliableResectioning/blob/raj.reliable-resectioning/Improving%20Structure%20from%20Motion%20with%20Reliable%20Resectioning.pdf) <br/>
[<b>Supplementary Material</b>](https://github.com/rajkataria/ReliableResectioning/blob/raj.reliable-resectioning/Improving%20Structure%20from%20Motion%20with%20Reliable%20Resectioning%20-%20Supplementary%20Material.pdf) <br/>
[<b>Short Video</b>](https://www.youtube.com/watch?v=xQcfrIVomIc)
<br/>

<h4>Abstract</h4>
A common cause of failure in structure-from-motion (SfM) is misregistration of images due to visual patterns that occur in more than one scene location. Most work to solve this problem ignores image matches that are inconsistent according to the statistics of the tracks graph, but these methods often need to be tuned for each dataset and can lead to reduced completeness of normally good reconstructions when valid matches are removed. Our key idea is to address ambiguity directly in the reconstruction process by using only a subset of reliable matches to determine resectioning order and the initial pose. We also introduce a new measure of similarity that adjusts the influence of feature matches based on their track length. We show this improves reconstruction robustness for two state-of-the-art SfM algorithms on many diverse datasets.

<h3>Getting Started</h3>
Clone Repository: ```git clone --branch raj.reliable-resectioning git@github.com:rajkataria/ReliableResectioning.git```

<h4>OpenSfM</h4>

1.  Follow install instructions at [https://www.opensfm.org/docs/building.html](https://www.opensfm.org/docs/building.html)


<h4>COLMAP</h4>

1.  Follow installation instructions at [https://colmap.github.io/install.html](https://colmap.github.io/install.html)
2.  Install `libjsconcpp` library: ```sudo apt-get install libjsoncpp-dev```


<h3>Contact</h3>
If you have any questions, please contact [Rajbir Kataria](rk2@illinois.edu)