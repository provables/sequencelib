/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180413 sequence
-/

namespace Sequence

@[OEIS := A180413, offset := 1, maxIndex := 33, derive := true]
def A180413 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + x) * (loop (λ (x y) ↦ x * y) 4 (1 + x) * x)

end Sequence