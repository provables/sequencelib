useCache () {
    mkdir -p .lake
    rsync -a --chmod=0777 @cache@/build .lake/
}

preBuildHooks+=(useCache)