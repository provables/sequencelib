/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159940 sequence
-/

namespace Sequence

@[OEIS := A159940, offset := 2, maxIndex := 40, derive := true]
def A159940 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((3 * loop (λ (x y) ↦ x + (y * y)) x x) + 2) * 2

end Sequence