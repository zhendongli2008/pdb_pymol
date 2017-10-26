delete all
fetch 3wu2, async=0
orient
hide all

create acluster, (chain a and resn OEX and resi 404)

dist = 3
cmd.select("closeA", "byres acluster around %i"%(dist))

create clusterA, acluster | closeA
show sticks, clusterA
show spheres, clusterA
set sphere_scale, 0.4
