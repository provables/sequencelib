/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060188 sequence
-/

namespace Sequence

@[OEIS := A060188, offset := 2, maxIndex := 100, derive := true]
def A060188 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ (2 * (2 + x)) + x) x 1 - x

end Sequence