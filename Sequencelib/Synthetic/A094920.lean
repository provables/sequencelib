/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094920 sequence 
-/


namespace Sequence

@[OEIS := A094920, offset := 1, derive := true, maxIndex := 100]
def A094920 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 1 + ((2 * (x + x)) + x)) x 1 % (1 + x))

end Sequence

