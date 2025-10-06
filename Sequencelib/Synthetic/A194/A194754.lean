/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194754 sequence
-/

namespace Sequence

@[OEIS := A194754, offset := 1, maxIndex := 76, derive := true]
def A194754 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (y / (1 + (2 + 4))) + x) x 1 + x) * 2) + 1) % (2 + x)

end Sequence