/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017321 sequence
-/

namespace Sequence

@[OEIS := A017321, offset := 0, maxIndex := 100, derive := true]
def A017321 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * 2) * y) (λ (x _y) ↦ x) 2 (2 + (x + ((x * 2) * 2))) 2

end Sequence