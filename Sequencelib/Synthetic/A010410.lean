/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010410 sequence
-/

namespace Sequence

@[OEIS := A010410, offset := 1, maxIndex := 22, derive := true]
def A010410 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x % (loop (λ (x _y) ↦ x * x) 2 2 - 2)) + x) x 1 / 2

end Sequence