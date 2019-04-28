echo 'base build before'
docker inspect -f '{{.Id}}' base:latest
docker build base -t base:latest
echo 'base build after'
docker inspect -f '{{.Id}}' base:latest

echo 'child build before'
docker inspect -f '{{.Id}}' child:latest
docker build child -t child:latest
echo 'child build after'
docker inspect -f '{{.Id}}' child:latest
