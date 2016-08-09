# Import file "birdy-landing" (sizes and positions are scaled 1:2)
birdy = Framer.Importer.load("imported/birdy-landing@2x")

logo = birdy.logo
welcome = birdy.welcome
register = birdy.register
signIn = birdy.sign_in
backArrow = birdy.backArrow
keyboard = birdy.keyboard

width = 375 * 2
height = 667

keyboard.y = height + 667

# welcome.visible = false;

signIn.onTap ->
	welcome.animate
		properties: 
			y: -height * 2
		curve: "ease-in-out"
		time: .2
	register.animate

# second page
register.x = 0;
register.visible = true;

backArrow.onTap ->
	welcome.animate
		properties: 
			y: 0;
		curve: "ease-in-out"
		time: .2  
		
signIn.onTap ->
	keyboard.animate
		properties: 
			y: height + 235
		curve: "ease-in-out"
		time: .2
		delay: .1
		
backArrow.onTap ->
	keyboard.animate
		properties:
			y: height + 667
		curve: "ease-in-out"
		time: .2		
		
		
		
		