/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124868 sequence
-/

namespace Sequence

@[OEIS := A124868, offset := 1, maxIndex := 12, derive := true]
def A124868 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ x + x) ((x / 3) - 2) 1 + x) x 1

end Sequence