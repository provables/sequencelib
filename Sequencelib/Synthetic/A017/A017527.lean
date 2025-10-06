/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017527 sequence
-/

namespace Sequence

@[OEIS := A017527, offset := 0, maxIndex := 13, derive := true]
def A017527 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * 2) * 2) * y) * ((x + x) + x)) (λ (_x y) ↦ y) 3 1 x

end Sequence