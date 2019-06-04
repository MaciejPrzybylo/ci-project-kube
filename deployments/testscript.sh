#!/bin/bash

counter=100
counter2=0

my_array=(mongo mongo-service secret-service aes-encyption-service session-token-service account-service dashboard-service email-service authentification-service role-service group-service) 

until [ $counter -gt 111 ]
do
  echo ${my_array[$counter2]}
  name=${my_array[$counter2]}
  sed "s/mongo-service/$name/g" mongo-service.yaml > $counter$name.yaml
  ((counter++))
  ((counter2++))
done

echo ALL done

