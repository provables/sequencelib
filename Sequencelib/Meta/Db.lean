import SQLite

structure DbContext where
  db : SQLite

inductive DbError
  | OpenError (e : IO.Error)

abbrev DbM := ReaderT DbContext <| EIO DbError

def DbM.run {α : Type} (act : DbM α) (ctx : DbContext) : EIO DbError α :=
  ReaderT.run act ctx

def DbM.run' {α : Type} (act : DbM α) (dbPath : System.FilePath) : EIO DbError α := do
  let db ← SQLite.openWith dbPath { mode := .readWrite } |>.toEIO .OpenError
  DbM.run act ⟨db⟩

def DbM.runFromEnv {α : Type} (act : DbM α) : EIO DbError α := do
  let path := (← IO.getEnv "SEQUENCELIB_DATABASE") |>.getD "./sequencelib.db"
  DbM.run' act path
