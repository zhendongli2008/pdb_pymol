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

#========================================================================

# Save
cmd.save("truncate%i.pdb"%dist, selection="clusterA")
count_atoms clusterA

# Obtained by the command: get_view
set_view (\
     0.838572919,   -0.347380459,   -0.419669092,\     0.366014749,   -0.211335883,    0.906294823,\    -0.403520197,   -0.913599432,   -0.050074138,\     0.000000000,    0.000000000,  -64.081321716,\     7.189734459,   23.134222031,   12.438377380,\    50.522201538,   77.640441895,  -20.000000000 )

# fix coloring and final output 
util.cbaw clusterA 
bg_color black
set depth_cue = 0
set ray_trace_fog = 0
set antialias=1.0
# This will give you an image 2400 by 2400 pixels
ray 2400,2400 
cmd.png("truncate%i"%dist, dpi=1000)


