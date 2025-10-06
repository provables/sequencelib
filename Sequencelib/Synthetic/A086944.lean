/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086944 sequence
-/

namespace Sequence

@[OEIS := A086944, offset := 1, maxIndex := 100, derive := true]
def A086944 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x _y) ↦ (x + x) + x) 2 (2 + (2 + x)) + x) (1 + x) 1 - 2) - 2

end Sequence