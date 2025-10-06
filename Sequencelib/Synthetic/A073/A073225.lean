/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073225 sequence
-/

namespace Sequence

@[OEIS := A073225, offset := 0, maxIndex := 100, derive := true]
def A073225 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x - 1) / loop (λ (x y) ↦ x * y) x 1) + 1

end Sequence