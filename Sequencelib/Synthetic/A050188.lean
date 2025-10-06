/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050188 sequence
-/

namespace Sequence

@[OEIS := A050188, offset := 3, maxIndex := 45, derive := true]
def A050188 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (1 + (2 + x)) * (loop (λ (x y) ↦ 1 + (x + y)) x 1 / 3)

end Sequence