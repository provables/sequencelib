/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050924 sequence
-/

namespace Sequence

@[OEIS := A050924, offset := 0, maxIndex := 4, derive := true]
def A050924 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) x 1 x) x 0

end Sequence