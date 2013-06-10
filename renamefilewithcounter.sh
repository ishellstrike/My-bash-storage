    #!bin/bash
    #labs.sh
    #s1.ext s2.ext ...sn.ext -> s1+k.ext s2+k.ext sn+k.ext
     
    parstr=$1
    parext=$2
    parn=$3
    park=$4
    counter=1
    tempnum=1
     
    is_num() {
        expr $1 + 0 > /dev/null 2> /dev/null
    }
     
    if [ -e $park ]
    then
        park=1
    fi
     
    if [[ $# < 3  ]]
    then
        echo "Syntax name .ext last_num [add_num=1]"
    else
        if is_num $parn && is_num $park
        then
            for file in $( ls ); do
                if [ "$file" = "$parstr$counter$parext" ]  && [ "$counter" -le "$parn" ]
                then
                    (( tempnum = counter + park ))
                    mv $file $parstr$tempnum$parext
                    let counter+=1
                fi
            done
        else
            echo "Syntax name .ext last_num [add_num=1]"
        fi
    fi

