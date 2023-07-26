#import "/template.typ": experience;

#experience(
  organization: "Ubisoft Montreal",
  role: "Online Programmer",
  location: "Montreal, Canada",
  start: "September 2017",
  end: "Present",
  skills: (
    "AWS (CDK, Certificates Manager, CloudFormation, EC2, ECS, IAM, Lambda, RDS, Route53, S3, Secrets Manager, Systems Manager)",
    "C",
    "C#",
    "GitLab CI",
    "JavaScript",
    "Lua",
    "MySQL",
    "Nginx",
    "OpenResty",
    "Redis",
    "TypeScript",
  ),
  responsibilities: (
    [Operated the API gateway technology responsible for routing HTTP requests to all backend services on Ubisoft's online platform API.],
    [Maintained Node.js and ASP.net RESTful microservices at the core of the platform's access control and identity validation.],
    [Took up a leadership role after the departure of a senior developer colleague by more actively engaging in and embracing ownership of my products and eventually mentoring several new hires.],
    [Planned and coordinated a large migration from on premises infrastructure to AWS cloud for the API gateway product and various microservices, guaranteeing continued connectivity between the gateway and backends still hosted on premises.],
    [Designed and implemented a complex, dynamically configurable, distributed rate limiting solution for the API gateway using a special algorithm to limit the rate of increase of HTTP requests reaching the platform.],
    [Initiated the effort to adopt AWS CDK for all of the team's infrastructure as code and personally wrote the first iteration of TypeScript constructs and stacks to achieve feature parity with old CloudFormation templates.],
    [Forked and rewrote an open source Nginx module, familiarly called Jdomain, to achieve dynamic DNS resolving during Nginx runtime.],
    [Automated many jobs using GitLab CI and AWS Lambda such as deployment pipelines, certificate validation, and secret rotations.],
  )
)

#experience(
  organization: "Espial Group Inc.",
  role: "Embedded Device Software Developer",
  coop: true,
  location: "Ottawa, Canada",
  start: "January 2016",
  end: "August 2016",
  skills: (
    "Bash",
    "C",
    "JavaScript",
    "Jenkins",
    "Netscape Plugin API",
    "REST",
    "Scrum",
    "Set Top Box Hardware",
  ),
  responsibilities: (
    [Implemented features for T.V. set top box client applications to fetch data and configuration from customer front end REST API servers.],
    [Carefully performed a large feature merge from a customer product release branch back into the main line without causing regressions.],
    [Created an advanced build script and integrated it with the existing build system to satisfy the fast paced delivery cycle with the client.],
    [Practiced agile development on a small team iterating in single week sprints and performing weekly demos, reviews, and planning.],
  )
)

#experience(
  organization: "Enhansoft Inc.",
  role: "Junior Programmer",
  coop: true,
  location: "Nepean, Canada",
  start: "May 2015",
  end: "August 2015",
  skills: (
    "C#",
    "Microsoft Business Intelligence Development Studio",
    "Microsoft SQL Server Reporting Services",
    "SQL",
    "VBScript",
    "Windows Management Instrumentation",
  ),
  responsibilities: (
    [Rewrote proprietary data collection products from an unmanaged set of VBScripts into a singular, flexible C\# command-line application.],
    [Configured application to manipulate Windows Management Instrumentation (WMI) to retrieve and store data during collection process.],
    [Designed several tens of Microsoft SQL Server Reporting Services reports to visualize data collections and be delivered to customers.],
  )
)

#experience(
  organization: "LiveQoS Inc.",
  role: "Software Developer Intern",
  coop: true,
  location: "Kanata, Canada",
  start: "September 2014",
  end: "December 2014",
  skills: (
    "Bash",
    "C",
    "CMake",
    "Kernel Module Development",
    "Objective-C",
    "Xcode",
  ),
  responsibilities: (
    [Built a prototype for a MacOS network kernel extension (NKE) to model a port of the company's Linux network kernel module product.],
    [Delivered a MacOS menu bar application to configure and display statistics fetched via socket communication for the NKE.],
    [Bundled menu bar app with MacOS installer DMG which could also preconfigure the NKE, uninstall, or selectively update components.],
  )
)
