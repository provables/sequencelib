import Mathlib
import Sequencelib.Meta.Synthetic

open Synth Function

theorem loop'_eq_loop : loop' = loop := by
  ext h n b
  simp only [loop]
  cases n with
  | ofNat m =>
    induction m with
    | zero =>
      reduce; rfl
    | succ k ih =>
      rw [loop']
      push_cast
      conv at ih =>
        rhs
        reduce
      rw [show Int.ofNat k = ↑k by rfl] at ih
      rw [ih]
      simp
      have : List.range' 1 (k + 1) = List.range' 1 k ++ [k + 1] := by
        nth_rw 2 [show k + 1 = 1 + k by omega]
        apply List.range'_1_concat
      aesop
  | negSucc m =>
    unfold loop'
    reduce; rfl

theorem loop2_eq_loop2' (f g : ℤ → ℤ → ℤ) (a : ℤ) (b c : ℤ) :
    loop2 f g a b c = (loop2' (uncurry f) (uncurry g) a (b, c)).1 := by
  match a with
  | .negSucc _ =>
    unfold loop2 loop2'
    reduce; rfl
  | .ofNat a =>
    simp
    induction a generalizing b c with
    | zero => reduce; rfl
    | succ _ ih =>
      simp
      unfold loop2 loop2'
      exact ih _ _

theorem loop2'_rec (f g : ℤ × ℤ → ℤ) (n : ℕ) (b : ℤ × ℤ) :
    loop2' f g (n + 1) b = (f (loop2' f g n b), g (loop2' f g n b)) := by
  induction n generalizing b with
  | zero => reduce; rfl
  | succ m ih => unfold loop2'; exact ih _

@[simp]
theorem loop2_out (f g : ℤ → ℤ → ℤ) (a : ℤ) (b c : ℤ) :
    loop2 f g a b c = b ∨ ∃ b' c', loop2 f g a b c = f b' c' := by
  match a with
  | .negSucc _ =>
    unfold loop2
    reduce; left; rfl
  | .ofNat 0 => reduce; left; rfl
  | .ofNat (n + 1) =>
    rw [loop2_eq_loop2', show Int.ofNat (n + 1) = n + 1 by rfl, loop2'_rec]
    let (u, v) := loop2' (uncurry f) (uncurry g) n (b, c)
    right
    use u, v
    simp
