# Create single dir
if !isdir("/tmp/a")
    mkdir("/tmp/a")
end

# Create all dirs to a given path
if !isdir("/tmp/a/b/c")
    mkpath("/tmp/a/b/c")
end
