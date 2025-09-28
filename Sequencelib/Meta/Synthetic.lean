namespace Synth
open Function

@[simp]
def add (a b : Int) : Int := a + b

@[simp]
def sub (a b : Int) : Int := a - b

@[simp]
def mul (a b : Int) : Int := a * b

@[simp]
def div (a b : Int) : Int := a / b

@[simp]
def mod (a : Int) (b : Int) : Int := a % b

@[simp]
def cond (a b c : Int) : Int := if a ≤ 0 then b else c

/--
Original semantics from the paper. It uses recursion and it's inefficient.
Use `loop` instead (see theorem about equivalence).
-/
@[simp,reducible]
def loop' (f : Int → Int → Int) (a : Int) (b : Int) : Int :=
  match a with
  | .ofNat 0 => b
  | .ofNat (n + 1) => f (loop' f n b) (n + 1)
  | .negSucc _ => b
termination_by Int.natAbs a

/--
Efficient implementation of `loop`.
See proof of equivalence to the original in `GenSeq.Proofs`.
-/
@[simp,reducible]
def loop (f : Int → Int → Int) (n : Int) (b : Int) : Int :=
  match n with
  | .ofNat m => List.range' 1 m |>.map (↑·) |>.foldl f b
  | .negSucc _ => b

@[simp,reducible]
def loop2 (f g : Int → Int → Int) (a : Int) (b c : Int) : Int :=
  match a with
  | .ofNat 0 => b
  | .ofNat (n + 1) => loop2 f g n (f b c) (g b c)
  | .negSucc _ => b
termination_by Int.natAbs a

@[simp,reducible]
def loop2' (f g : Int × Int → Int) (a : Int) (b : Int × Int) : Int × Int :=
  match a with
  | .ofNat 0 => b
  | .ofNat (n + 1) => loop2' f g n (f b, g b)
  | .negSucc _ => b
termination_by Int.natAbs a

def N : Nat := 1000

@[reducible]
def comprN (f : Int → Int) (a : Int) : Int :=
  match a with
  | .negSucc _ => 0
  | .ofNat 0 => List.range N |>.map (↑·) |>.find? (f · ≤ 0) |>.getD N
  | .ofNat (n + 1) =>
    let x := comprN f n
    List.range N |>.find? (fun (i : Nat) => x < i ∧ f i ≤ 0) |>.getD N
termination_by Int.natAbs a

@[reducible]
def comprP (f : Int → Int) (b : Int → Nat) (hb : ∀ n : Nat, n < b n ∧ f (b n) ≤ 0) (a : Int) : Int :=
  match a with
  | .negSucc _ => 0
  | .ofNat 0 => List.range (b 0) |>.map (↑·) |>.find? (f · ≤ 0) |>.getD (b 0)
  | .ofNat (n + 1) =>
    let x := comprP f b hb n
    let N := b x
    List.range N |>.find? (fun (i : Nat) => x < i ∧ f i ≤ 0) |>.getD N
termination_by Int.natAbs a

end Synth
