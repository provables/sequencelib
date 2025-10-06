/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135378 sequence
-/

namespace Sequence

@[OEIS := A135378, offset := 0, maxIndex := 6, derive := true]
def A135378 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) + y) (λ (_x y) ↦ y) x 2 x

end Sequence