/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060851 sequence
-/

namespace Sequence

@[OEIS := A060851, offset := 1, maxIndex := 100, derive := true]
def A060851 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ (x + x) + x) x x) 1 ((1 + x) + x)

end Sequence