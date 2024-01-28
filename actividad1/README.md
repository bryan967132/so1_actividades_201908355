# Tipos de Kernel y sus diferencias
El kernel de un sistema operativo es su parte más esencial, encargada de gestionar el acceso a los dispositivos y la ejecución de aplicaciones en memoria. Existen varios tipos de kernel, cada uno con sus propias características y enfoques:

## Exonúcleos
También conocidos como sistemas operativos verticalmente estructurados, los exonúcleos delegan todas las decisiones relacionadas con el hardware al productor. Son pequeños y su funcionalidad se encuentra fuera de la memoria, en librerías activas.

## Micro-núcleos
Estos núcleos son pequeños y contienen solo las funciones básicas del sistema operativo. Las demás funciones se agregan a través de módulos externos, lo que los hace flexibles y seguros.

## Kernel de Poisson
Un núcleo completo utilizado para resolver el problema de Dirchlet en dos extensiones, nombrado en honor al físico Siméon Poisson.

## Núcleos monolíticos
Son estructuras con un núcleo grande y complicado que abarca todos los servicios del sistema. No son modulares, lo que significa que cualquier modificación requiere la recompilación del núcleo y el reinicio del sistema.

## Núcleos híbridos
Combina características de los microkernels y los núcleos monolíticos. Pueden cargar controladores y extensiones de forma dinámica, lo que mejora la productividad y la capacidad de gestión del sistema.

## Kernel panic
Se produce cuando un sistema operativo encuentra un error interno grave del que no puede recuperarse. Es común en sistemas Unix y, en ocasiones, en sistemas Mac OS X, y puede ocurrir por intentar acceder a direcciones de memoria incorrectas.

# User vs Kernel Mode
| Característica | User Mode | Kernel Mode |
| - | - | - |
| Privilegios | Menos privilegiado | Más privilegiado |
| Acceso a recursos | No puede acceder directamente | Puede interactuar directamente con el hardware |
| Creación de procesos | Crea un proceso y espacio de direcciones | Gestiona qué procesos se ejecutan y cuándo |
| Interacción con hardware | Debe pasar por el kernel mediante syscalls | Puede interactuar directamente con el hardware mediante syscalls |
| Cambio de modo | No cambia de modo | Cambia de modo durante la ejecución |

# Interruptions vs traps
| Característica | Interruptions | Traps |
| - | - | - |
| Mecanismo de Activación | Generadas por dispositivos o software | Provocadas intencionalmente por el programa |
| Propósito | Manejar eventos que requieren atención inmediata | Manejar condiciones excepcionales o errores del programa |
| Ocurrencia | Asincrónicas, pueden ocurrir en cualquier momento durante la ejecución del programa | Sincrónicas, ocurren durante la ejecución del programa cuando eventos específicos las desencadenan |
| Prioridad | Pueden tener diferentes niveles de prioridad para manejar eventos críticos primero | No tienen niveles de prioridad ya que son provocadas por el programa y se manejan inmediatamente |
| Uso | Comúnmente utilizadas en sistemas en tiempo real para manejar eventos asíncronos | Ampliamente utilizadas en sistemas operativos y lenguajes de programación de alto nivel para implementar manejo de errores, propagación de excepciones y gestión de recursos |