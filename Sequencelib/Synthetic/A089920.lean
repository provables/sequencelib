/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089920 sequence 
-/


namespace Sequence

@[OEIS := A089920, offset := 1, derive := true, maxIndex := 4]
def A089920 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (y * y) + x) x y) x 1 + x) + x)

end Sequence

