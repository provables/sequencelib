/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183222 sequence
-/

namespace Sequence

@[OEIS := A183222, offset := 1, maxIndex := 97, derive := true]
def A183222 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (y / (2 * ((x + x) * (1 + x)))) + x) x 1 + x) + 1

end Sequence