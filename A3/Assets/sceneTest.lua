-- Simple Scene:
-- An extremely simple scene that will render right out of the box
-- with the provided skeleton code.  It doesn't rely on hierarchical
-- transformations.

-- Create the top level root node named 'root'.
-- root create at (0,0,0) no need to translate
rootNode = gr.node('root')
------------------------ Materials declarartion--------------------
-- TODO: make your maore materials
red = gr.material({1.0, 0.0, 0.0}, {0.1, 0.1, 0.1}, 10)
blue = gr.material({0.0, 0.0, 1.0}, {0.1, 0.1, 0.1}, 10)
green = gr.material({0.0, 1.0, 0.0}, {0.1, 0.1, 0.1}, 10)
white = gr.material({1.0, 1.0, 1.0}, {0.1, 0.1, 0.1}, 10)

brown = gr.material({0.8,0.5, 0.25}, {0.1, 0.1, 0.1}, 10)
darkbrown = gr.material({0.21, 0.14, 0.02}, {0.1, 0.1, 0.1}, 10)
slightDarkbrown = gr.material({0.70, 0.47, 0.23}, {0.1, 0.1, 0.1}, 10)
black = gr.material({0.0,0.0, 0.0}, {0.1, 0.1, 0.1}, 10)
white = gr.material({1.0,1.0, 1.0}, {0.5, 0.5, 0.5}, 10)
yellow = gr.material({1.0, 1.0, 0.0}, {0.1, 0.1, 0.1}, 10)

--- joint and geometry details
-- follow order
-- create node: joint or geometry 
-- scale
-- rotate
-- translate
-- set material
-- add parent
------------------------ Cube mesh details--------------------
cubeMesh = gr.mesh('cube', 'cube1')
cubeMesh:scale(1.0, 1.0, 1.0) -- unit height cube
cubeMesh:translate(0.0, 0.0, 0.0)
cubeMesh:rotate('y', 0.0)
cubeMesh:set_material(red)
------------------------ Spehere mesh details--------------------
spehereMesh = gr.mesh('sphere','spehere1')
spehereMesh:scale(0.5, 0.5, 0.5) -- unit diamater spehere
spehereMesh:translate(0.0, 0.0, 0.0)
spehereMesh:rotate('y', 0.0)
spehereMesh:set_material(green)

----------------- torso -----------------
torsoMesh = gr.mesh('cube', 'torsoMesh')
torsoMesh:scale(1.0, 2.0, 1.0) 
torsoMesh:translate(0.0, 0.0, 0.0)
torsoMesh:set_material(red)

rootNode:add_child(torsoMesh)


----------------- leftUpperArm -----------------
-- leftUpperArmJoint
leftUpperArmJoint = gr.joint('leftUpperArmJoint', {0 ,0,0}, {-90, 0, 0});
-- TODO: understand joint translation
leftUpperArmJoint:translate(0.7,0.8,0.0)

rootNode:add_child(leftUpperArmJoint)

-- leftUpperArm01Mesh
leftUpperArm01Mesh = gr.mesh('sphere','leftUpperArm01Mesh')
leftUpperArm01Mesh:scale(0.3, 0.3, 0.3)
leftUpperArm01Mesh:set_material(green)

leftUpperArmJoint: add_child(leftUpperArm01Mesh)

-- leftUpperArm02Mesh
leftUpperArm02Mesh = gr.mesh('cube','leftUpperArm02Mesh')
leftUpperArm02Mesh:scale(0.4, 1.2, 0.4)
leftUpperArm02Mesh:rotate('z', 90.0)
leftUpperArm02Mesh:translate(0.7, 0.0, 0.0)
leftUpperArm02Mesh:set_material(red)

leftUpperArmJoint: add_child(leftUpperArm02Mesh)

-- ----------------- leftLowerArm -----------------
-- leftLowerArmJoint
leftLowerArmJoint = gr.joint('leftLowerArmJoint', {0 ,0,0}, {-135, 0, 0});
-- TODO: understand joint translation
leftLowerArmJoint:translate(1.3,0.0,0.0)

leftUpperArmJoint:add_child(leftLowerArmJoint)

-- leftLowerArm01Mesh
leftLowerArm01Mesh = gr.mesh('sphere','leftLowerArm01Mesh')
leftLowerArm01Mesh:scale(0.3, 0.3, 0.3)
leftLowerArm01Mesh:set_material(green)

leftLowerArmJoint: add_child(leftLowerArm01Mesh)

-- leftLowerArm02Mesh
leftLowerArm02Mesh = gr.mesh('cube','leftLowerArm02Mesh')
leftLowerArm02Mesh:scale(0.4, 1.2, 0.4)
leftLowerArm02Mesh:rotate('z', 90.0)
leftLowerArm02Mesh:translate(0.7, 0.0, 0.0)
leftLowerArm02Mesh:set_material(red)

leftLowerArmJoint: add_child(leftLowerArm02Mesh)

-- ----------------- leftHand -----------------
-- Joint
leftHandJoint = gr.joint('leftHandJoint', {0, 0, 0}, {-60, 0, 60});
-- TODO: understand joint translation
leftHandJoint:translate(1.5,0.0,0.0)

leftLowerArmJoint:add_child(leftHandJoint)

-- leftHand01Mesh
leftHand01Mesh = gr.mesh('sphere','leftHand01Mesh')
leftHand01Mesh:scale(0.3, 0.3, 0.3)
leftHand01Mesh:set_material(green)

leftHandJoint: add_child(leftHand01Mesh)

-- leftHand02Mesh
leftHand02Mesh = gr.mesh('cube','leftHand02Mesh')
leftHand02Mesh:scale(0.3, 0.5, 0.3)
leftHand02Mesh:rotate('z', 90.0)
leftHand02Mesh:translate(0.3, 0.0, 0.0)
leftHand02Mesh:set_material(red)

leftHandJoint: add_child(leftHand02Mesh)

----------------- rightUpperArm -----------------
-- rightUpperArmJoint
rightUpperArmJoint = gr.joint('rightUpperArmJoint', {0 ,0,0}, {0, 0, 90});
-- TODO: understand joint translation
rightUpperArmJoint:translate(-0.7,0.8,0.0)

rootNode:add_child(rightUpperArmJoint)

-- rightUpperArm01Mesh
rightUpperArm01Mesh = gr.mesh('sphere','rightUpperArm01Mesh')
rightUpperArm01Mesh:scale(0.3, 0.3, 0.3)
rightUpperArm01Mesh:set_material(green)

rightUpperArmJoint: add_child(rightUpperArm01Mesh) 

-- rightUpperArm02Mesh
rightUpperArm02Mesh = gr.mesh('cube','rightUpperArm02Mesh')
rightUpperArm02Mesh:scale(0.4, 1.2, 0.4)
rightUpperArm02Mesh:rotate('z', 90.0)
rightUpperArm02Mesh:translate(-0.7, 0.0, 0.0)
rightUpperArm02Mesh:set_material(red)

rightUpperArmJoint: add_child(rightUpperArm02Mesh) 

-- ----------------- rightLowerArm -----------------
-- rightLowerArmJoint
rightLowerArmJoint = gr.joint('rightLowerArmJoint', {0 ,0,0}, {0, 0, 135});
-- TODO: understand joint translation
rightLowerArmJoint:translate(-1.3,0.0,0.0)

rightUpperArmJoint:add_child(rightLowerArmJoint)

-- rightLowerArm01Mesh
rightLowerArm01Mesh = gr.mesh('sphere','rightLowerArm01Mesh')
rightLowerArm01Mesh:scale(0.3, 0.3, 0.3)
rightLowerArm01Mesh:set_material(green)

rightLowerArmJoint: add_child(rightLowerArm01Mesh)

-- rightLowerArm02Mesh
rightLowerArm02Mesh = gr.mesh('cube','rightLowerArm02Mesh')
rightLowerArm02Mesh:scale(0.4, 1.2, 0.4)
rightLowerArm02Mesh:rotate('z', 90.0)
rightLowerArm02Mesh:translate(-0.7, 0.0, 0.0)
rightLowerArm02Mesh:set_material(red)

rightLowerArmJoint: add_child(rightLowerArm02Mesh)

-- ----------------- rightHand -----------------
-- Joint
rightHandJoint = gr.joint('rightHandJoint', {0, 0, 0}, {-60, 0, 60});
-- TODO: understand joint translation
rightHandJoint:translate(-1.5,0.0,0.0)

rightLowerArmJoint:add_child(rightHandJoint)

-- rightHand01Mesh
rightHand01Mesh = gr.mesh('sphere','rightHand01Mesh')
rightHand01Mesh:scale(0.3, 0.3, 0.3)
rightHand01Mesh:set_material(green)
rightHandJoint: add_child(rightHand01Mesh)

-- rightHand02Mesh
rightHand02Mesh = gr.mesh('cube','rightHand02Mesh')
rightHand02Mesh:scale(0.3, 0.5, 0.3)
rightHand02Mesh:rotate('z', 90.0)
rightHand02Mesh:translate(-0.3, 0.0, 0.0)
rightHand02Mesh:set_material(red)

rightHandJoint: add_child(rightHand02Mesh)

----------------- leftUpperLeg -----------------
-- leftUpperLegJoint
leftUpperLegJoint = gr.joint('leftUpperLegJoint', {0 ,0,0}, {-90, 0, 0});
-- TODO: understand joint translation
leftUpperLegJoint:translate(0.7,-1.0,0.0)

rootNode:add_child(leftUpperLegJoint)

-- leftUpperLeg01Mesh
leftUpperLeg01Mesh = gr.mesh('sphere','leftUpperLeg01Mesh')
leftUpperLeg01Mesh:scale(0.3, 0.3, 0.3)
leftUpperLeg01Mesh:set_material(green)

leftUpperLegJoint: add_child(leftUpperLeg01Mesh)

-- leftUpperLeg02Mesh
leftUpperLeg02Mesh = gr.mesh('cube','leftUpperLeg02Mesh')
leftUpperLeg02Mesh:scale(0.4, 1.2, 0.4)
leftUpperLeg02Mesh:translate(0.0, -0.7, 0.0)
leftUpperLeg02Mesh:set_material(red)

leftUpperLegJoint: add_child(leftUpperLeg02Mesh)

-- Return the root with all of it's childern.  The SceneNode A3::m_rootNode will be set
-- equal to the return value from this Lua script.
return rootNode
