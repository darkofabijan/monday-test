echo "Command: docker build -t monday-test ."

for i in {1..100}
do
   echo "Welcome $i times"
   docker rmi $(docker images -a -q)
   docker build -t monday-test .
done
