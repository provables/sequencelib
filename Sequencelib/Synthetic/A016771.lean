/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016771 sequence
-/

namespace Sequence

@[OEIS := A016771, offset := 0, maxIndex := 17, derive := true]
def A016771 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * 3) * y) (λ (_x y) ↦ y) 3 1 x

end Sequence