# coreos-in-coreos (POC)

Launching CoreOS inside Container running on CoreOS.

Why? Jepp :-)

originally: Rancher cannot assign one host to multiple projects.
So just provide multiple docker-in-docker-deamons to rancher. And I don't want to pull some container just for that.

I ended up using the already installed os (which is r/o) and build the container live at boot (some 8 inodes) and pass /usr into it reducing it's size on disk to almost nothing. Build time is also acceptable.
