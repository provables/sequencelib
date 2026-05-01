import Lean.Elab.Command

open Lean Syntax Elab

declare_syntax_cat signed_num
declare_syntax_cat keywords
declare_syntax_cat values
declare_syntax_cat offset

syntax "-" noWs num : signed_num
syntax num : signed_num
syntax "%K" ident (ident,+) : keywords
syntax "%" noWs ident ident (signed_num,+,?) : values
syntax "%O" ident signed_num ("," signed_num)? : offset

structure OEISRepoItem where
  tag : String
  description : String
  offset : Int
  keywords : Array String
  values : Array Int
  deriving Inhabited, Repr

def getInt (s : TSyntax `signed_num) : Int :=
  match s with
  | `(signed_num|-$n:num) => -(n.getNat)
  | `(signed_num|$n:num) => n.getNat
  | _ => 0

def toOEISRepoItem (env : Environment) (s : String) : Except String OEISRepoItem := do
  let mut result := default
  for line in s.lines do
    result ← match (line.take 2).toString with
      | "%N" =>
        pure {result with description := line.drop 11 |>.toString}
      | "%K" =>
        match (← Lean.Parser.runParserCategory env `keywords line.toString) with
        | `(keywords| %K $tag:ident $tags,*) =>
          pure {result with
            tag := tag.getId.toString,
            keywords := tags.getElems.toList.map (·.getId.toString) |>.toArray}
        | _ => throw s!"line with keywords has wrong syntax: {line}"
      | "%S" | "%T" | "%U" =>
        match (← Lean.Parser.runParserCategory env `values line.toString) with
        | `(values| %$_:ident $_:ident $values,*) =>
          let vs := values.getElems.toList.map getInt
          pure {result with values := result.values ++ vs.toArray}
        | _ => throw s!"line with values has wrong syntax: {line}"
      | "%O" =>
        match (← Lean.Parser.runParserCategory env `offset line.toString) with
        | `(offset| %O $_:ident $off:signed_num $[,$_:signed_num]?) =>
          pure {result with offset := getInt off}
        | _ => throw s!"line with offset has wrong syntax: {line}"
      | _ => pure result
  return result

def fileToOEISRepoItem (env : Environment) (file : System.FilePath) :
    IO (Except String OEISRepoItem) := do
  return toOEISRepoItem env (← IO.FS.readFile file)

-- #eval do
--   let env ← importModules #[{module := `Sequencelib.Meta.OEISRepo}] {}
--   let x := toOEISRepoItem env "%K foo bar,baz"
--   dbg_trace (repr x)
