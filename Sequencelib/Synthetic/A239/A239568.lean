/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A239568 sequence
-/

namespace Sequence

@[OEIS := A239568, offset := 2, maxIndex := 100, derive := true]
def A239568 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ 2 + (x + y)) x x * loop (λ (x y) ↦ (1 + x) + y) x 1) / 2

end Sequence