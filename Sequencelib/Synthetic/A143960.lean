/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143960 sequence
-/

namespace Sequence

@[OEIS := A143960, offset := 1, maxIndex := 25, derive := true]
def A143960 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 + (x + x)) x (loop (λ (x _y) ↦ x + x) x 2)

end Sequence