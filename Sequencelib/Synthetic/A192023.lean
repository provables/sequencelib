/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192023 sequence 
-/


namespace Sequence

@[OEIS := A192023, offset := 1, derive := true, maxIndex := 43]
def A192023 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (2 * ((1 + (2 + y)) * y)) + x) x 1 + x)

end Sequence

