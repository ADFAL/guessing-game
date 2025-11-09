echo "Game : Guess the number of files"
echo "Please enter the number of files:"
read number
countFiles=$(ls -l | wc -l)
congratulated=true
while $congratulated 
do
    if [[ $number -gt $countFiles ]]
    then
        echo "The number is too high."
        echo "Please enter the number of files:"
        read number
    elif [[ $number -lt $countFiles ]]
    then
        echo "The number is too low."
        echo "Please enter the number of files:"
        read number
    else
        echo "you won, congratulations"
        congratulated=false
    fi
done