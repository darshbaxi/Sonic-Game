# #!/usr/bin/env bash

# DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)"

# cd "${DIR}/.."
# echo $(( $(cat version) + 1 )) > version
# git pull && docker-compose -p durak -f deployments/docker-compose.prod.yml up -d --build
# cd -

#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)"

cd "${DIR}/.."

# Increment the version
echo $(( $(cat version) + 1 )) > version

# Pull the latest changes from Git
git pull

# Deploy on Render (Replace YOUR_RENDER_DEPLOY_HOOK_URL with your actual deployment hook URL)
curl -X POST "https://api.render.com/deploy/srv-cv1k0ntds78s73dv5jjg?key=PkC8EAUUQNw"

cd -
