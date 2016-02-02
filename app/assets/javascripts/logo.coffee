scene = new THREE.Scene()
camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000)

renderer = new THREE.WebGLRenderer()
renderer.setPixelRatio(window.devicePixelRatio)

devicePixelRatio = window.devicePixelRatio || 1

canvas = document.body.insertBefore(renderer.domElement, document.body.firstChild)
canvasSize = {
width: canvas.clientWidth, 
height: canvas.clientHeight
}

canvas.width = canvasSize.width * devicePixelRatio
canvas.height = canvasSize.height * devicePixelRatio
canvas.style.width = canvasSize.width + 'px'
canvas.style.height = canvasSize.height + 'px'
renderer.setViewport(0, 0, canvasSize.width*devicePixelRatio, canvasSize.height*devicePixelRatio)



geometry = new THREE.SphereGeometry(500,40,40)
material = new THREE.MeshNormalMaterial( {wireframe: true} )
sphere = new THREE.Mesh(geometry, material)
scene.add(sphere)
camera.position.z = 500


render = ->
	requestAnimationFrame(render)
	sphere.rotation.x += 0.01
	sphere.rotation.y += 0.01
	renderer.render(scene,camera)

render()