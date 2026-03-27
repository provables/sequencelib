import Lean.Elab.Command

open Lean Syntax Elab

namespace OEISRepoSyntax

declare_syntax_cat signed_num
declare_syntax_cat keywords
declare_syntax_cat values
declare_syntax_cat offset

scoped syntax "-" noWs num : signed_num
scoped syntax num : signed_num
scoped syntax "%K" ident (ident,+) : keywords
scoped syntax "%" noWs ident ident (signed_num,+,?) : values
scoped syntax "%O" ident signed_num "," signed_num : offset

structure OEISRepoData where
  tag : String
  description : String
  offset : Int
  keywords : Array String
  values : Array Int
  deriving Inhabited, Repr

def toOEISRepoData (env : Environment) (s : String) : Except String OEISRepoData := do
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
          let vs := values.getElems.toList.map fun (s : TSyntax `signed_num) =>
            match s with
            | `(signed_num|-$n:num) => (-(n.getNat) : Int)
            | `(signed_num|$n:num) => n.getNat
            | _ => 0
          pure {result with values := result.values ++ vs.toArray}
        | _ => throw s!"line with values has wrong syntax: {line}"
      | "%O" =>
        match (← Lean.Parser.runParserCategory env `offset line.toString) with
        | `(offset| %O $_:ident $off:num,$_:num) =>
          pure {result with offset := off.getNat}
        | _ => throw s!"line with offset has wrong syntax: {line}"
      | _ => pure result
  return result

end OEISRepoSyntax
