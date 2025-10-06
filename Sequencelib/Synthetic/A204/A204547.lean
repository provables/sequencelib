/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204547 sequence
-/

namespace Sequence

@[OEIS := A204547, offset := 1, maxIndex := 99, derive := true]
def A204547 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ y / (2 + x)) (x + x) 0 / 2) % 2

end Sequence