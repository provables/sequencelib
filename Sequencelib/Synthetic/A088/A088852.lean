/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088852 sequence
-/

namespace Sequence

@[OEIS := A088852, offset := 1, maxIndex := 10, derive := true]
def A088852 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x + x) ((x + x) * x) 1 * loop (λ (x _y) ↦ ((x * 2) * 2) + 1) x 1

end Sequence