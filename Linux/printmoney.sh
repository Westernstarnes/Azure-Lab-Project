for number in $(grep -i mylie TestQ | cut -d " " -f1);do total=$(($total + $number)) ; done; printf -- "-$%'.2f\n" $total
