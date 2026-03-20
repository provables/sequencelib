import SQLite

structure DbContext where
  schema : String
  dbPath : System.FilePath
  db : SQLite

inductive DbError
  | OpenError (e : IO.Error)
  | InnerIOError (e : IO.Error)
  | MissingSchema (f : System.FilePath) (e : IO.Error)
  | NoResultsError (q : String)
  | GeneralError (e : String)

instance : Repr DbError where
  reprPrec a _ := match a with
    | .OpenError e => s!"OpenError: {e}"
    | .InnerIOError e => s!"InnerIOError: {e}"
    | .MissingSchema f e => s!"MissingSchema: {f}, {e}"
    | .NoResultsError q => s!"NoResultsError: {q}"
    | .GeneralError e => s!"GeneralError: {e}"

abbrev DbM := ReaderT DbContext <| EIO DbError

instance : MonadLift IO DbM where
  monadLift a := IO.toEIO DbError.InnerIOError a

def DbM.get : DbM SQLite := read >>= (pure ·.db)

def DbM.run {α : Type} (act : DbM α) (ctx : DbContext) : EIO DbError α :=
  ReaderT.run act ctx

def DbM.run' {α : Type} (act : DbM α) (schemaPath dbPath : System.FilePath) : EIO DbError α := do
  if not (← System.FilePath.pathExists dbPath) then
    IO.FS.writeFile dbPath "" |>.toEIO .OpenError
  let schema ← IO.toEIO (.MissingSchema schemaPath) <| IO.FS.readFile schemaPath
  let db ← SQLite.openWith dbPath { mode := .readWrite } |>.toEIO .OpenError
  DbM.run act ⟨schema, dbPath, db⟩

def DbM.runFromEnv {α : Type} (act : DbM α) : EIO DbError α := do
  let schemaPath := (← IO.getEnv "SEQUENCELIB_SCHEMA") |>.getD "./sequencelib.sql"
  let path := (← IO.getEnv "SEQUENCELIB_DATABASE") |>.getD "./sequencelib.db"
  DbM.run' act schemaPath path

def DbError.toIO {α : Type} (e : EIO DbError α) : IO α := do
  EIO.toIO (IO.Error.userError s!"DbError: {repr ·}") e

def DbM.fromEnvToIO {α : Type} (act : DbM α) : IO α := do
  DbError.toIO <| DbM.runFromEnv act

def ensureDb : DbM Unit := do
  let db ← DbM.get
  db.exec (← read).schema

-- #eval do
--   DbError.toIO <| DbM.run' (ensureDb) "./sequencelib.sql" "./sequencelib2.db"
--   IO.println "done"
