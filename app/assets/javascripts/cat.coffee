# SCENE
scene = new THREE.Scene()

# CAMERA
camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000)
camera.position.z = 800

# RENDERER
devicePixelRatio = window.devicePixelRatio || 1
renderer = new THREE.WebGLRenderer(
	alpha: true, 
	antialias: true
)
renderer.setPixelRatio(window.devicePixelRatio)

# CANVAS
canvas = document.body.insertBefore(renderer.domElement, document.body.firstChild)
canvas.width = canvas.clientWidth * devicePixelRatio
canvas.height = canvas.clientHeight * devicePixelRatio
canvas.style.width = canvas.width + 'px'
canvas.style.height = canvas.height + 'px'
renderer.setViewport(0, 0, canvas.width, canvas.height)

# MATERIALS
material = 
	depth: new THREE.MeshDepthMaterial(),
	wireframe: new THREE.MeshNormalMaterial({wireframe: true})

# GEOMETRIES
geometry = 
	sphere: new THREE.SphereGeometry(500,40,40)
	grid: new THREE.GridHelper(500,20)

# MESHES
mesh = 
	sphere: new THREE.Mesh(geometry.sphere, material.wireframe)
	grid: new THREE.Mesh(geometry.grid, material.depth)

# IMPLEMENTATION
scene.add(mesh.sphere)
scene.add(mesh.grid)
renderer.render(scene,camera)


