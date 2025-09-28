/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023807 sequence 
-/


namespace Sequence

@[OEIS := A023807, offset := 1, derive := true, maxIndex := 69]
def A023807 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ if (x % (loop (λ (x _y : ℤ) ↦ x * x) 2 2 - 2)) ≤ 0 then x else 0) x

end Sequence

