# My notes
I decided to learn a bit of bash scripting to automate a few tasks and it turned out to be useful for the Linux user I am. Here are some notes I took while I was learning...

## Checking the available shells:
    cat /etc/shells

## Checking the bash path
    which bash

## Make script executable
    chmod +x <scriptName>

## Executing the bash script which is in the same folder
    ./<scriptName>

## Saving an output of echo in a file
    echo TEXT > fileName.txt

## Open a prompt and write some text to a text file
    cat > fileName.txt

## Append some text to a text file
    cat >> fileName.txt

## One-line comment
    ## comment

## Multiline comment
    :' 
    comment
    '

## Including some heredoc text
    cat << heredocname 
        TEXT
    heredocname

## Declaring variables and assigning some initial value
    variableName=value

## Assigning to a variable the result of some computation
    variable=$(( computation ))

## Using the variable
    $variableName

## Conditional statements
    if [ condition ]
    then
        // some code
    fi
    -------------------------------
    if [ condition ]
    then
        // some code
    elif [ condition ]
    then
        // some code
    else
        // some code
    fi
    -------------------------------
    if [ <condition> -a <condition> ]
    if [ condition ] && [ condition ]
    -------------------------------
    if [ <condition> -o <condition> ]
    if [ condition ] || [ condition ]
    -------------------------------

## Comparison operators
    -eq or == in (( ))
    -lt or < in (( ))
    -gt or > in (( ))
    -ne
    -ge
    -le

## Case statements
    $variable in
    case1 )
        // some code
    ;;

    case2 )
        // some code
    ;;

    *)
        // some code
    ;;
    esac

## While loop
    while [ condition ]
    do
        // some code
    done

## For loop
    for in in a b c d
    do
        // some code
    done
    ------------------------------
    for i in {a..b}
    do
        // some code
    done
    -----------------------------
    for in in {a..b..increment}
    do
        // some code
    done
    -----------------------------
    for (( i=a; condition ; incrementation ))
    do
        // some code
    done

## Branching statements
    break
    continue

## Using args (taking an infinite number of arguments)
arrayName=("$@")

## Getting the length of the args array and printing the array
$@ $#

## Accessing an element of args
    ${arrayName[index]}

## Export a variable to another script
    export <variable> exportFile
    Variable should be in capital

## Comparing strings
    ==
    \<
    \>

## Concatenation
    Direct concatenation
    No special operation for concatenation

## Turning string into uppercase:
    str^^

## Turning string into lowercase
    str^

## Converting numbers using the bc calc:
    echo "obase=a; ibase=b; $variableName" | bc 

## Declaring variables (another way?)
    declare variableName=value

## Checking all available variables?
    declare -p

## Declare array
    arrayName=( a b c ... q)

## Getting all the elements
    ${arrayName[@]}

## Getting sepcific element
    ${arrayName[index]}

## Creating a function
function functionName()
{
    // some code
}

## Calling the function
functionName

## Sending email from terminal
    install ssmtp
    Open /etc/ssmtp/ssmtp.conf
        root=email address
        mailhub=smtp.gmail.com:587
        AuthUser=email address
        AuthPass=password
        UseStartTLS=yes

## Curl commands
    curl <url> -O : downloads file with the original file name
    curl <url> -o <newFileName> or curl <url> > fileName : download file and give it a new name
    curl -I <url>

## Select statement
    select variableName in a b c ... p
    do
        // some code (usually case statements)
    done

