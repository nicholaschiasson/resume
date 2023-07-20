#import "symbols.typ": *;
#import "template.typ": *;

#show: resume.with(
	name: "Nicholas Chiasson",
	phone: " +16138753155",
	email: "nicholasomerchiasson@gmail.com",
	homepage: "https://nicholaschiasson.github.io",
	github: "nicholaschiasson",
)

#line(length: 100%, stroke: 0.5pt)

== Experience

#experience(
  organization: "Ubisoft Montreal",
  role: "Online Programmer",
  location: "Montreal, QC",
  start: "September 2017",
  end: "Present",
  skills: (),
  responsibilities: ()
)

#experience(
  organization: "Espial Group Inc.",
  role: "Embedded Device Software Developer " + sym.dash.em + " CO-OP",
  location: "Ottawa, ON",
  start: "January 2016",
  end: "August 2016",
  skills: ("C", "Bash", "Oracle Eclipse", "Jenkins", "Javascript", "Netscape Plugin API", "Set Top Box Hardware", "REST", "Fedora", "Scrum", "JIRA"),
  responsibilities: (
		[Implemented features for television set top box client application to handle data management and retrieval from customer front end REST API server],
		[Responsible for delicately porting and merging a large customer product development branch with main project branch without introducing regression],
		[Created new build script and integrated it with existing build server to satisfy requirements of the fast paced delivery cycle with client],
		[Practiced an agile development method by working in a small scrum team iterating on single week long sprints, participating in weekly sprint demos, reviews, and planning, as well as daily stand up meetings],
  )
)

#experience(
  organization: "Enhansoft Inc.",
  role: "Junior Programmer " + sym.dash.em + " CO-OP",
  location: "Nepean, ON",
  start: "May 2015",
  end: "August 2015",
  skills: ("C#", "VBScript", "SQL", "Visual Studio", "Windows Management Instrumentation", "Microsoft Business Intelligence Development Studio", "Microsoft SQL Server Reporting Services", "Windows 7"),
  responsibilities: (
		[Developed an expanded version of an existing proprietary data collection product based on a set of requirements with new features to be implemented, migrating the code base from primarily VBScript to C\# .NET],
		[Worked directly with Windows Management Instrumentation (WMI) to retrieve and store information necessary for the execution of the product],
		[Designed several tens of Microsoft SQL Server Reporting Services reports to represent data collected by the product and to be viewed by customers],
  )
)

#experience(
  organization: "LiveQoS Inc.",
  role: "Software Developer Intern " + sym.dash.em + " CO-OP",
  location: "Kanata, ON",
  start: "September 2014",
  end: "December 2014",
  skills: ("Objective-C", "C", "Xcode", "Bash", "Vim", "SVN", "Kernel Module Development", "Mac OS X", "Android"),
  responsibilities: (
		[Inspected code base for Linux network kernel module to form basis of company technology and used this research to create model for corresponding Mac OS X network kernel extension],
		[Designed and developed graphical user interface application for configuration of and statistics display for Mac OS X network kernel extension via socket communication],
		[Created Mac OS X installer dmg file used for installing or updating selective components of Mac OS X product including an uninstaller script and pre-configuration of network kernel extension],
  )
)

#line(length: 100%, stroke: 0.5pt)

== Core Technical Skills

#skills(category: "Languages", "C", cpp, "C#", "Java", "JavaScript", "Python", "Rust", "Lisp (Racket)", "Bash", "HTML", "CSS", "Lua", "Visual Basic", "Objective-C", latex, "SQL")

#skills(category: "Frameworks", "OpenGL", "DirectX", "WebGL", "OGRE 3D", "Qt", "Node.js", "Express.js", "XNA", ".NET")

#skills(category: "Software", "Atom", "Visual Studio", "Xamarin Studio", "Oracle Eclipse", "Xcode", "Vim", "Unity", "GitKraken", "Git", "SVN", "GitHub", "GitLab", "Travis CI", "Jenkins", "Bash", "PowerShell", "JIRA", "Mozilla Firefox", "Google Chrome", "Microsoft Office Suite")

#skills(category: "Systems", "Windows XP through 10", "Mac OS X", "Ubuntu", "Linux Mint", "Fedora", "Android", "iOS")

#skills(category: "Concepts", "Agile with Scrum", "Object Oriented Paradigm", "Functional Paradigm", "Mac and Linux Kernel Module Development")

#line(length: 100%, stroke: 0.5pt)

== Education

#education(
  institution: "Carleton University",
  degree: "B.C.S. Honours, Computer Game Development, Minor in Japanese, Cooperative Education",
  location: "Ottawa, ON",
  start: "2012",
  end: "2017",
  highlights: (
		(
		  metric: "CGPA",
		  result: "9.92 / 12.00 (B+)",
		), (
		  metric: "Scholarships",
		  result: "$8000 Entrance Award, $2000 Robertson Award",
		),
  ),
)

#line(length: 100%, stroke: 0.5pt)

== Applied Projects

#project(
	name: "Fourth Year Game Design Term Project " + sym.dash.em + " affliction",
	start: "February 2017",
	end: "April 2017",
	skills: ("C#", "Unity", "Xamarin", "Blender", "Mac OS X"),
	responsibilities: (
		[In a team of two, developed a real time strategy game set inside the human body],
		[Employed modern game development techniques including particle systems, physically based dynamic lighting, skeletal animation, and strategic artificial intelligence],
		[Used blender to produce various models for the game],
	)
)

#project(
	name: "Fourth Year Game Design Assignment 1 " + sym.dash.em + " Checkers",
	start: "January 2017",
	skills: ("C#", "Unity", "Xamarin", "Mac OS X"),
	responsibilities: (
		[Independently developed a variant of checkers and deployed to WebGL on personal website],
	)
)

#project(
	name: "Undergraduate Honours Project " + sym.dash.em + " snatch3d-vr",
	start: "September 2016",
	end: "December 2016",
	skills: ("C#", "Unity", "Xamarin", "Mac OS X"),
	responsibilities: (
		[Studied viability of virtual reality game development for mobile platforms with a focus on convenience for players, performance limits for games, and issues to bear in mind for developers],
		[Designed and developed an immersive and engaging game experience using the Google Cardboard and Google VR SDK for Unity to target the iOS platform despite the limited control scheme provided by the Google Cardboard, all the while abiding by best practices for virtual reality game development in order to avoid physiological side effects such as motion sickness],
		[Collected user feedback along development process to determine the level of success in the game's design and to help come to conclusions about points discussed in case study],
	)
)

#project(
	name: "Third Year Game Design Term Project " + sym.dash.em + " d00m3d",
	start: "September 2015",
	end: "December 2015",
	skills: (cpp, "OGRE 3D", "GLSL", "Visual Studio", "CMake", "Windows 10"),
	responsibilities: (
		[Worked in a team of three to produce a 3D space shooter game using #cpp and the Ogre 3D game engine with the goal of incorporating more modern fundamental aspects of 3D game development such as dynamic lighting, particle effects, physics, and compositing effects],
		[Designed and implemented physics and game entity system to handle realistic entity interactions including gravity, collisions, impulse, and elasticity],
		[Programmatically produced all game entity models and visuals aside from textures],
	)
)

#project(
	name: "Third Year Computer Graphics Term Project " + sym.dash.em + " N3DIL",
	start: "September 2015",
	end: "December 2015",
	skills: (cpp, "OpenGL", "GLSL", "Visual Studio", "Windows 10"),
	responsibilities: (
		[Using OpenGL, aggregated fundamentals of rendering 3D computer graphics into an easier to use library for 3D graphics applications],
		[Studied different methods of animation and applied findings toward implementation of a smooth keyframe interpolation animation system for 3D object transformations assembled in an object hierarchy],
	)
)

#project(
	name: "Third Year Software Engineering Term Project " + sym.dash.em + " Magic Realm",
	start: "January 2015",
	end: "April 2015",
	skills: (cpp, "Qt", "Visual Studio", "Scrum", "Windows 8.1"),
	responsibilities: (
		[Interpreted complex requirements split over two deliverables based on rules of the board game 'Magic Realm' and designed model for a computer game implementation],
		[Divided major aspects of project among three members and coordinated progress in accordance with Agile development techniques],
		[Developed graphical user interface and controller to interact with client side model and server side controller using #cpp and the Qt framework],
	)
)

#project(
	name: "Game Jam " + sym.dash.em + " Ludum Dare 31",
	start: "December 2014",
	skills: ("C#", "XNA", "Visual Studio", "Windows 8.1"),
	responsibilities: (
		[Developed a complete game under the constraint of the theme 'Entire Game On One Screen' using C\# and XNA in under 48 hours all alone and with no starting resources],
		[Faced off with and overcame unexpected issues costing hours of development time which ultimately became lessons very well learned for future projects],
		[Maintained relatively well structured object oriented game design despite time constraint],
	)
)

#project(
	name: "Second Year Game Design Term Project " + sym.dash.em + " SNATCH",
	start: "January 2014",
	end: "April 2014",
	skills: (cpp, "DirectX", "Visual Studio", "Windows 8.1"),
	responsibilities: (
		[Worked in a pair to complete a functioning demo of a 3D game using #cpp and DirectX in the Visual Studio environment],
		[Implemented various game features consisting of player motion and interaction, lighting, game world building, sound, artificial intelligence],
	)
)

#project(
	name: "First Year Game Design Term Project " + sym.dash.em + " SPACE",
	start: "January 2013",
	end: "April 2013",
	skills: ("Processing", "Windows 7"),
	responsibilities: (
		[Designed game UI components and implemented player mechanics as well as menu navigation in a real time strategy space game],
		[Coordinated among two other team members for which sections of work were to be completed by whom and established weekly deadlines in order to assure organized production at a relaxed pace as opposed to rushing],
		[Conducted code reviews for changes made by team members],
	)
)

#project(
	name: "Intro to Programming I Game Project " + sym.dash.em + " Laser Pong",
	start: "December 2012",
	skills: ("Python", "TkInter", "Windows 7"),
	responsibilities: (
		[Creatively incorporated elements of another genre into the classic game 'Pong' to create a unique and challenging arcade experience],
		[Independently programmed the entire project using an unfamiliar graphics library to further develop an understanding of the tools required for the course],
		[Completed a final product a week earlier than the deadline leaving the rest of the allotted time for tweaking and extra features, resulting in the game being recognized by the professor as one of the most enjoyable submitted projects.],
  )
)
