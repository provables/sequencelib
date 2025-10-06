/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295391 sequence
-/

namespace Sequence

@[OEIS := A295391, offset := 1, maxIndex := 11, derive := true]
def A295391 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((x / y) + x) * (1 + x)) x 1 + 1

end Sequence