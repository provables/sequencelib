/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A313780 sequence
-/

namespace Sequence

@[OEIS := A313780, offset := 0, maxIndex := 49, derive := true]
def A313780 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ (x + y) / 2) 2 x / 2) + y) x 1 + (x + x) * 2

end Sequence