/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A231560 sequence
-/

namespace Sequence

@[OEIS := A231560, offset := 2, maxIndex := 88, derive := true]
def A231560 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x / 3) x (1 + y) + x) x 0 / 2

end Sequence