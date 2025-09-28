/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047363 sequence 
-/


namespace Sequence

@[OEIS := A047363, offset := 1, derive := true, maxIndex := 57]
def A047363 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((x * x) % (1 + (2 + 4))) % 2) x

end Sequence

