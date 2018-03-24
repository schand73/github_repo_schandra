
result=10
attempts=1

while [[ $result -ne 0 ]]
do

echo "This is for you to guess the number of files in my directory"
echo " Enter a number and I will tell you if your guess is too high or too low"

#get the response

#cd 
count_files=$(ls -ltr|wc -l)
#echo $count_files

echo "Go ahead - Make a guess"
read response_user
echo $response_user
echo "Your attempt number $attempts is number $response_user"

result=$(expr $response_user - $count_files)
#echo $result

if [[ $result -lt 0 ]]
then
      echo "Your guess is too less"
fi

if [[ $result -gt 0 ]] 
then
      echo "Your guess is on higher side"
fi

if [[ $result -eq 0 ]]
then
      echo "Your guess is correct"        
fi

attempts=$(expr $attempts + 1)

done
