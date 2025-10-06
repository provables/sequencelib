/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092807 sequence
-/

namespace Sequence

@[OEIS := A092807, offset := 0, maxIndex := 100, derive := true]
def A092807 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (loop (λ (x _y) ↦ ((x - 1) + x) + x) (x - 1) 1)

end Sequence