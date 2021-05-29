#! /bin/bash -x

#Problem 1 : Help user find degF or degC based on their Conversion Selection. Use Case Statement and ensure that the inputs are
#            within the Freezing Point ( 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#            a. degF = (degC * 9/5) + 32
#            b. degC = (degF – 32) * 5/9

echo "To convert from degC to degF press 1 or vice versa press 2"
read userChoice
temperatureConverter()
{
	case $1 in
		1)
			echo "Enter the value of temperature in degC:"
			read degC
			if(( $degC>=0 && $degC<=100 ))
			then
				val=`echo "scale=2;$degC * 9 / 5" | bc`
				finalVal=`echo "scale=2;$val + 32" | bc`
				echo "The value in degF is $finalVal"
			else
				echo "Please input the value between 0 to 100"
			fi
			;;
		2)
			echo "Enter the value of temperature in degF:"
                        read degF
                        if(( $degF>=32 && $degF<=212 ))
                        then
                                val=`echo "scale=2;$degF - 32" | bc`
				finalVal=`echo "scale=2;$val * 5 / 9" | bc`
				echo "The value in degC is $finalVal"
                        else
                                echo "Please input the value between 32 to 212"
                        fi
                        ;;
		*)
			echo "INVALID INPUT!!!...PRESS 1 or 2"
			;;
	esac
}
temperatureConverter $userChoice
