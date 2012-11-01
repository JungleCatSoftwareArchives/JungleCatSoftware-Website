if [ -z $1 ]
then
	destination="/DATA/htdocs/dev.junglecatsoftware.com"
else
	destination=$1
fi

echo "Deploying site to $destination..."

databaseconfig="protected/config/database.php"
yiiruntime="protected/runtime"

# this is an environment-unique file not in source control
scp $destination/$databaseconfig ./$databaseconfig

# this is site-specific runtime logs and data. We don't want to wipe these and they aren't in sourcecontrol
scp -r $destination/$yiiruntume ./$yiiruntime

rsync -rltv --delete-delay --delete-excluded --delay-updates --force --group="www-data" --chmod=ug+w,+rx --exclude-from=rsync-ignore ./ $destination

# Remove from repo
rm -rf ./$databaseconfig
rm -rf ./$yiiruntime
