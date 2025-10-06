/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111386 sequence
-/

namespace Sequence

@[OEIS := A111386, offset := 1, maxIndex := 31, derive := true]
def A111386 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((x + x) / (x % 4)) + x) x 1

end Sequence