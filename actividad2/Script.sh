# Define la variable GITHUB_USER
GITHUB_USER="tu_usuario_github"
# Consulta la URL de GitHub API y guarda la respuesta en una variable
response=$(curl -s "https://api.github.com/users/$GITHUB_USER")
# Extrae los datos del JSON
github_user=$(echo "$response" | jq -r '.login')
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')
# Formatea el mensaje
message="Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."
# Obtiene la fecha del día de ejecución
fecha=$(date +'%Y-%m-%d')
# Crea el directorio temporal si no existe
mkdir -p "/tmp/$fecha"
# Crea el archivo de log
log_file="/tmp/$fecha/saludos.log"
# Escribe el mensaje en el archivo de log
echo $message >> $log_file
# Notifica la ejecución del script
echo "Mensaje escrito en $log_file"