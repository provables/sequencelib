/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289812 sequence
-/

namespace Sequence

@[OEIS := A289812, offset := 1, maxIndex := 27, derive := true]
def A289812 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((loop (λ (x _y) ↦ 1 + ((x / (1 + 4)) + x)) x 1 + 1) + x) / 3) + 1) + x) / (1 + x)) + 2) + x) - 2

end Sequence