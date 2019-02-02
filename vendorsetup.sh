for combo in $(curl -s https://raw.githubusercontent.com/ancient-rom/android_vendor_ancient/pie/ancient.devices | sed -e 's/#.*$//' | awk '{printf "ancient_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
