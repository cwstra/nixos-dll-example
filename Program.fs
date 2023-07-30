// For more information see https://aka.ms/fsharp-console-apps
open Assimp
open System

let assimp = new AssimpContext()
let result = assimp.ImportFile (Environment.CurrentDirectory + "/dummy-file", PostProcessSteps.None)
