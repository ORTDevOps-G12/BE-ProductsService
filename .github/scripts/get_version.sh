VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)
echo "VERSION=$VERSION" >> $GITHUB_ENV