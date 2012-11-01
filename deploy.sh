if [ -z $1 ]
then
	destination="/dev/null/"
else
	destination=$1
fi

databaseconfig="protected/config/database.php"

# this is an environment-unique file not in source control
scp $destination/$databaseconfig ./$databaseconfig

rsync -rlt --delete-delay --delete-excluded --delay-updates --force --group="www-data" --chmod=ug+w,+rx --exclude-from=rsync-ignore ./ $destination

# Remove from repo
rm ./$databaseconfig
