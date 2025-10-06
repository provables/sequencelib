/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247817 sequence
-/

namespace Sequence

@[OEIS := A247817, offset := 1, maxIndex := 100, derive := true]
def A247817 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * loop (λ (x _y) ↦ 2 * (2 * (2 + x))) x 0

end Sequence