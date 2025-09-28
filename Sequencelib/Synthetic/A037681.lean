/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037681 sequence 
-/


namespace Sequence

@[OEIS := A037681, offset := 1, derive := true, maxIndex := 24]
def A037681 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ ((x - 1) % 4) + 2 * (x * 2)) x 1

end Sequence

