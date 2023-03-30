pushd `dirname $0` > /dev/null
#TODO: git pull
#TODO: Infrequently do everything. Frequently check git and only deploy services if git reports changes.
pushd ./src/continuous-deploy > /dev/null
docker compose build
docker compose up
popd > /dev/null

pushd ./src > /dev/null
#TODO: Deploy each subfolder (except continuous-deploy)
#TODO: docker compose ls => for each that does not exist, docker compose -p <extra> down
popd > /dev/null
