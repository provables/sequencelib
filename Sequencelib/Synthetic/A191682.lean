/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191682 sequence 
-/


namespace Sequence

@[OEIS := A191682, offset := 1, derive := true, maxIndex := 31]
def A191682 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (x + y) / 2) x y) x 0 * 2) + 2)

end Sequence

