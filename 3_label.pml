delete all
fetch 3wu2, async=0
orient
hide all

create acluster, (chain a and resn OEX and resi 404)
dist = 3
cmd.select("closeA", "byres acluster around %i"%(dist))
create clusterA, acluster | closeA

show sticks, clusterA
show spheres, clusterA and (elem Mn,Ca,O)
set sphere_scale, 0.4

# label on beta Carbon and C3 for HCA
label clusterA and (name CA or name C3), "%s%s" % (resn, resi)
set label_size, -1
