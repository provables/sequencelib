/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017748 sequence
-/

namespace Sequence

@[OEIS := A017748, offset := 84, maxIndex := 100, derive := true]
def A017748 (n : ℕ) : ℕ :=
  let x := n - 84
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ (x * x) + x) 2 2 * 2) * x) / y) + x) x 1

end Sequence