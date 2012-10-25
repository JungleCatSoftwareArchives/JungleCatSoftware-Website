destination="/DATA/htdocs/dev.junglecatsoftware.com/"
databaseconfig="protected/config/database.php"

# this is an environment-unique file not in source control
scp $destination/$databaseconfig ./$databaseconfig

rsync -a --delete-delay --delete-excluded --delay-updates --force --exclude-from=rsync-ignore ./ $destination

# Remove from repo
rm ./$databaseconfig
