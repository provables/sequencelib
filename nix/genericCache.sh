useCache-@name@ () {
    echo "Creating: @target@"
    mkdir -p @target@
    echo "Will unpack @inputPath@"
    ls @inputPath@
    file @inputPath@
    tar zxf @inputPath@ -C @target@
    chmod -R u+rwx @target@
}

preBuildHooks+=(useCache-@name@)