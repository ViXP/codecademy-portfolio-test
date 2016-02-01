scene = new THREE.Scene()
camera = new THREE.PerspectiveCamera(75, 1, 0.1, 1000)

renderer = new THREE.WebGLRenderer()
header = document.getElementsByTagName("header")[0]
header.appendChild(renderer.domElement)

geometry = new THREE.BoxGeometry(1,1,1)
material = new THREE.MeshBasicMaterial({color: 0x3C94CA, wireframe: true, wireframeLinewidth: 2})
cube = new THREE.Mesh(geometry, material)
scene.add(cube)

camera.position.z = 1.4

render = ->
	requestAnimationFrame(render)
	cube.rotation.x += 0.01
	cube.rotation.y += 0.01
	renderer.render(scene,camera)

render()