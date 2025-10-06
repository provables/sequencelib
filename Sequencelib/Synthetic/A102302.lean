/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102302 sequence
-/

namespace Sequence

@[OEIS := A102302, offset := 7, maxIndex := 100, derive := true]
def A102302 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| loop (λ (x y) ↦ (y / 2) + x % 2) x 1 + 2

end Sequence