# Docker-hicfilters


Data-type-independent, generic bam sorting module
* Input : a Hi-C bam file sorted by readID (.bam) and a bgzipped restriction enzyme sites bed file (.bed.gz).
* Output : a bam file with filter flags (.ff.bam)


This repo contains the source files for a docker image stored in duplexa/hicfilters:v1. (we will change the docker hub account soon)


## Cloning the repo
```
git clone https://github.com/4dn-dcic/docker-hicfilters
cd docker-hicfilters
```

## Resources tools
Major software tools used inside the docker container are downloaded by the script `downloads.sh`. This script also creates a symlink to a version-independent folder for each software tool. In order to build an updated docker image with a new version of the tools, ideally only `downloads.sh` should be modified, but not `Dockerfile`, unless the new tool requires a specific APT tool that need to be downloaded. 
The `downloads.sh` file also contains comment lines that specifies the name and version of individual software tools.


## Building docker image
You need docker daemon to rebuild the docker image. If you want to push it to a different docker repo, replace duplexa/hicfilters:v1 with your desired docker repo name. You need permission to push to duplexa/hicfilters:v1.
```
docker build -t duplexa/hicfilters:v1 .
docker push duplexa/hicfilters:v1
```

## Usage
Run the following in the container.
```
run.sh <input_bam> <re_bed> <output_prefix>
# input_bam : a bam file sorted by read ID
# re_bed : a bgzipped bed file listing restriction enzyme sites
# output_prefix : prefix of the output bam file.
```
