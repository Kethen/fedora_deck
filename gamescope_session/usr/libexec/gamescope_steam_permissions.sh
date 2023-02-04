wait_and_set_perm () {
	target=$1
	mod=$2
	own=$3

	while ! [ -e "$target" ]
	do
		sleep 0.1
	done
	chmod $mod "$target"
	chown $own "$target"
}

wait_and_set_perm "/sys/class/hwmon/hwmon4/power1_cap" "664" "root:wheel"
wait_and_set_perm "/sys/class/hwmon/hwmon4/power2_cap" "664" "root:wheel"

