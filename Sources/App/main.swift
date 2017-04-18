import Vapor

let drop = Droplet()

drop.get("/") { request in
    return "Hello world is my sce Vapor project!"
}

drop.get("/hello",":name") { request in
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)!"
    }
    return "Error retrieving parameters"
}

drop.get("/view") { request in
    return try drop.view.make("view.html")
}

drop.get("404") { request in
    throw Abort.notFound
}


drop.run()
