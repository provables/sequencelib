/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151908 sequence 
-/


namespace Sequence

@[OEIS := A151908, offset := 2, derive := true, maxIndex := 6]
def A151908 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((1 + loop (λ (x y : ℤ) ↦ x * y) x 3) / 4) + x)

end Sequence

