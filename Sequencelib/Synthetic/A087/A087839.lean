/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087839 sequence
-/

namespace Sequence

@[OEIS := A087839, offset := 1, maxIndex := 85, derive := true]
def A087839 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y / (x + 2)) + 2) ((x + x) - 2) 1

end Sequence