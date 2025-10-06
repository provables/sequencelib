/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129105 sequence
-/

namespace Sequence

@[OEIS := A129105, offset := 8, maxIndex := 15, derive := true]
def A129105 (n : ℕ) : ℕ :=
  let x := n - 8
  Int.toNat <| (loop (λ (x y) ↦ (y + x) / (4 - x % 2)) x 2 + 2) * 2

end Sequence