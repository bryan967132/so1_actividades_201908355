GITHUB_USER="bryan967132"
response=$(curl -s "https://api.github.com/users/$GITHUB_USER")
# Extraer datos del json
github_user=$(echo "$response" | jq -r '.login')
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')
# Mensaje
message="Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."
fecha=$(date +'%Y-%m-%d')
mkdir -p "/tmp/$fecha"
log_file="/tmp/$fecha/saludos.log"
echo $message >> $log_file
echo "Mensaje escrito en $log_file"