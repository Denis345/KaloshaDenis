if [ $# -eq 4 ] ; then 
	find $1 -type f -size +$2b -size -$3b -printf "%p, %f, %s\n" > $4
	printf "Number of files viewed " ; find $1 -type f | wc -l
else
	echo "number of invalid parameters" > &2
	echo "format: (serch directory) (min_size) (max_size) (out_file name)" > &2
fi

