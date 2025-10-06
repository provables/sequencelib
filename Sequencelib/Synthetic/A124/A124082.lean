/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124082 sequence
-/

namespace Sequence

@[OEIS := A124082, offset := 1, maxIndex := 5, derive := true]
def A124082 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x y) ↦ (x + x) + y) x 0 - x) + 1) * (x + 1)) / 2) + 1) + 2

end Sequence