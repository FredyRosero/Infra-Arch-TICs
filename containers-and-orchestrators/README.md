# Laboratorio 01 - Contenedores y orquestadores

¡Hola estimados estudiantes!

1. [Play with Docker](https://www.docker.com/101-tutorial/)
   1. Así uds tengan una máquina con la configuración requerida para correr Docker, sigua los pasos de la sección "Play with Docker"
   2. Este les pide correr un primer contenedor donde está desplegado un sitio web con los pasos a seguir
   3. Preste mucha atención a cómo publicar imágenes propias en Docker HUB
2. [Kubernetes](https://training.linuxfoundation.org/training/introduction-to-kubernetes/)
   1. Complete el curso gratuito
   2. Despliegue el online boutique en un cluster local usando los manifiestos de este archivo (necesita completar el curso o haber realizado algún tutorial de Kubernetes para correr manifestos)
3. Entrega
   1. La URL a un commit de en un fork del repositorio del online boutique con el front modificado (puede hacer cualquier ajuste, ej. añadir un tag <h1> con color rojo en el archivo home.html con el texto "El mejor estudiante de Infra & Arch estuvo aquí")
   2. La URL a la imagen publicada en el Docker Hub de este repositorio modificado por uds mismos
   3. La URL a un commit de en un fork del repositorio del online boutique con el manifest modificado (usando la imagen que publicó anteriormente)
   4. Una captura de la consola con los pods desplegados en el cluster local de kubernetes donde se evidencie que está usando su imagen y no la original del repo
   5. Una captura de la aplicación corriendo con su pod con imagen modificada

# Enterga
1. <https://github.com/FredyRosero/microservices-demo/commit/43cff66805cebf3268952c19f61bb79940ff6ee8>
2. <https://hub.docker.com/repository/docker/faroseroc/frontend/general>
3. <https://github.com/FredyRosero/microservices-demo/blob/main/kubernetes-manifests/frontend.yaml>
4. 