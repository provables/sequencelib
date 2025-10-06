/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075921 sequence
-/

namespace Sequence

@[OEIS := A075921, offset := 0, maxIndex := 15, derive := true]
def A075921 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) x (loop (λ (x _y) ↦ 1 + (x + x)) x 1)

end Sequence