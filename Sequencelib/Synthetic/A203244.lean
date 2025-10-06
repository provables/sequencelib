/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A203244 sequence
-/

namespace Sequence

@[OEIS := A203244, offset := 2, maxIndex := 18, derive := true]
def A203244 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 + ((2 * 4) * (x + x))) y 1 + (x + x) * 2) x 1 * 2) * 2

end Sequence