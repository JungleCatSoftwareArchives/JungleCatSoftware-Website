if [ -z $1 ]
then
	destination="/DATA/htdocs/dev.junglecatsoftware.com/"
else
	destination=$1
fi

echo "Deploying site to $destination..."

databaseconfig="protected/config/database.php"

# this is an environment-unique file not in source control
scp $destination/$databaseconfig ./$databaseconfig

rsync -rltv --delete-delay --delete-excluded --delay-updates --force --group="www-data" --chmod=ug+w,+rx --exclude-from=rsync-ignore ./ $destination

# Remove from repo
rm ./$databaseconfig
