/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080522 sequence 
-/


namespace Sequence

@[OEIS := A080522, offset := 1, derive := true, maxIndex := 50]
def A080522 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (x + x) + y) (y - 2) 2 + x) x 1

end Sequence

