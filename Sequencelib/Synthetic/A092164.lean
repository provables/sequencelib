/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092164 sequence 
-/


namespace Sequence

@[OEIS := A092164, offset := 1, derive := true, maxIndex := 20]
def A092164 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) y 2 - x) x 1

end Sequence

