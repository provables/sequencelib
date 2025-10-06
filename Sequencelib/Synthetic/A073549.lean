/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073549 sequence
-/

namespace Sequence

@[OEIS := A073549, offset := 1, maxIndex := 24, derive := true]
def A073549 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x)) x 0

end Sequence