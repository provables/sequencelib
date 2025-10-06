/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114688 sequence
-/

namespace Sequence

@[OEIS := A114688, offset := 0, maxIndex := 50, derive := true]
def A114688 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ loop2 (λ (x y) ↦ (2 * (2 + (2 + x))) + y) (λ (x _y) ↦ x) y 1 1 - x) x 1 + 1) / 2

end Sequence