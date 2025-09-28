/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253943 sequence 
-/


namespace Sequence

@[OEIS := A253943, offset := 5, derive := true, maxIndex := 100]
def A253943 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((2 * ((x + x) + x)) / y) + x) x 3

end Sequence

