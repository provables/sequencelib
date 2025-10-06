/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004774 sequence
-/

namespace Sequence

@[OEIS := A004774, offset := 1, maxIndex := 100, derive := true]
def A004774 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((x / 2) / 2) / 2) + y) x 0

end Sequence