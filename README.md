# PROYECTO VENTA DE MÓVILES


1º. MYSQL(Workbench)

Como primer paso he buscado un Dataset en Kaggle para poder practicar y he encontrado uno que contiene registro de ventas de móviles.
Lo primero que hice fue descargar el archivo CSV y abrirlo con Power Query para poder revisar si fuera necesario hacer algún cambio en el.
Una vez comprobado que todo está bien ingresé a Workbench donde con una consulta SQL he creado la tabla donde cargaré el contenido del archivo para analizar las ventas de los móviles y otros aspectos dependiendo de la información que me aporte el Dataset.

 ![image](https://github.com/user-attachments/assets/a106d21e-3f28-4fd1-b27a-fa23377532e7)

Después de haber creado la tabla utilizo el wizard para importar los datos desde el archivo CSV.
Ahora procedo a hacer unas consultas para ver datos relevantes que puedo obtener.




Entre las consultas efectuadas he buscado la cantidad de ventas totales, cantidad de ventas distinguidas por el género del cliente o por el método de pago, variedad de móviles por marca, la lista de precio de los móviles, la cantidad vendida de cada modelo, el precio máximo y el mínimo de los móviles vendidos, así como la media del precio. El día que se facturó más y el que se facturó menos, así como donde se hicieron la mayor venta y la menor venta entre otros aspectos relevantes que podemos apreciar con los datos aportados por el Dataset.
Finalmente creo un script para si es necesario poder crear nuevamente de manera directa en Workbench la tabla y cargar los datos a partir de una consulta.

•	TODA ESTA PARTE SE ENCUENTA EN LOS ARCHIVOS DEL GITHUB:

> Consultas SQL

> Creación de Tabla y cargado de datos






















2º. POWER BI (Dashboard)

Ahora que ya conocemos un poco mas los datos con los que estamos trabajando ya podemos adentrarnos en la parte de creación de informes para poder efectuar un análisis y así efectuar una interpretación del negocio para poder tomar medidas de mejora y conocer el estado del mismo.

Es así como he confeccionado este Dashboard donde lo primero que podemos ver el Total Facturado, así como el numero total de transacciones y las unidades vendidas de los móviles.
Tenemos además dos segmentadores donde podemos acceder de manera rápida a efectuar un filtrado por el género del usuario y el rengo de fecha que queramos analizar.
Además, contamos con un botón que nos hará más fácil el borrar las opciones seleccionadas para regresar al inicio.
Contamos con una visualización que nos detalla el método de pago utilizado por los clientes que se irá actualizando según los criterios seleccionados en los segmentadores.
También tenemos un grafico de pastel que nos detalla la distribución de las transacciones según el género del cliente.
Un grafico que nos muestra la media de las compras según el genero del usuario y finalmente otro que nos aporta información sobre la cantidad de móviles vendidas según el modelo.
Todo esto ayuda de manera rápida a poder tener una comprensión de las preferencias de los clientes que en este caso nos estamos centrando en el genero de los mismos. Y de esta manera se puedan tomar decisiones según el planteamiento de la compañía ya sea para incrementar las ventas en algún grupo en concreto, conocer las preferencias según el género, el gasto que efectúa cada grupo entre otros.

3º. PYTHON (DataFrames/Gráficos)

>  Scripts de Python

Finalmente decidí aprovechar la potencia de Python para efectuar otros gráficos con los datos obtenidos y en este enlace muestro como efectúo la conexión con la base de datos para posteriormente crear un Dataframe el cual utilizará para hacer algunos gráficos que posteriormente se podrían utilizar para crear un informe.
