# Bash :

echo "Game : Guess the number of files"
countFiles=$(ls -l | wc -l)
congratulated=true

while $congratulated 
do
    echo "Please enter the number of files:"
    read number

    if [[ $number -gt $countFiles ]]
    then
        echo "The number is too high."
    elif [[ $number -lt $countFiles ]]
    then
        echo "The number is too low."
    else
        echo "You won, congratulations!"
        congratulated=false
    fi
done