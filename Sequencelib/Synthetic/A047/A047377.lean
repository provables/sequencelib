/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047377 sequence
-/

namespace Sequence

@[OEIS := A047377, offset := 1, maxIndex := 64, derive := true]
def A047377 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ y - x) x 1 + x) / 2) + x

end Sequence