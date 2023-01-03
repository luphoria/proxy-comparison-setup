echo "Starting Ultraviolet..."
cd Ultraviolet-App
PORT=13370 npm run start & disown
echo "Visit https://localhost:13370 with flag --ignore-certificate-errors"

echo "Starting Rammerhead..."
cd ../rammerhead
node src/server.js & disown
echo "Visit http://localhost:13371"

echo "Starting womginx..."
cd ../womginx
sudo docker-compose up -d
echo "Visit http://localhost (NOTE: using 80, using non-default ports causes rewrite errors!!!)"

echo "Starting STomp..."
cd ../stomp-demo
PORT=13372 npm run start & disown
echo "Visit http://localhost:13372"

# echo "Starting aero..."
# TODO. their README sucks.

echo "Starting DiP..."
cd ../DIP-Demo
PORT=13374 npm run start & disown
echo "Visit http://localhost:13374"