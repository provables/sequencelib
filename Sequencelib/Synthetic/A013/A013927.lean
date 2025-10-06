/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013927 sequence
-/

namespace Sequence

@[OEIS := A013927, offset := 1, maxIndex := 8, derive := true]
def A013927 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((x / 3) % 3) + 1) + x) + y) x 0

end Sequence