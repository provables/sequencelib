/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060851 sequence 
-/


namespace Sequence

@[OEIS := A060851, offset := 1, derive := true, maxIndex := 100]
def A060851 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ (x + x) + x) x x) 1 ((1 + x) + x)

end Sequence

