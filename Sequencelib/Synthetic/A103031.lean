/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103031 sequence
-/

namespace Sequence

@[OEIS := A103031, offset := 1, maxIndex := 4, derive := true]
def A103031 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 3 * (1 + ((x * x) / 2))) x 0

end Sequence