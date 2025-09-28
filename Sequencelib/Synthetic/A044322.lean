/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A044322 sequence 
-/


namespace Sequence

@[OEIS := A044322, offset := 1, derive := true, maxIndex := 39]
def A044322 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 x - 1) 2 (1 + x)

end Sequence

