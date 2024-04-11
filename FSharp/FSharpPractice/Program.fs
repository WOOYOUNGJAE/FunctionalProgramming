let from whom =
    sprintf "from %s" whom

let a = 1

[<EntryPoint>]
let main argv =
    let message = from "F#" // Call the function
    printfn "Hello world %s" message
    0