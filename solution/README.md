#Solution Part 1
# generate the inputFile  by gencsv.sh then run the docker run command

#steps 1
git clone git@github.com:infracloudio/csvserver.git

#step 2 
cd csvserver/solution

#step 3 
./gencsv.sh

#step 4 
docker run -d -v $PWD/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER='Orange' infracloudio/csvserver:latest


#step 5
verify application is running docker ps -a and note container id 

#step 6
curl -o ./part-1-output http://localhost:9393/raw

#step 7
docker logs [container_id] >& part-1-logs
