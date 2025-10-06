/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280059 sequence
-/

namespace Sequence

@[OEIS := A280059, offset := 0, maxIndex := 100, derive := true]
def A280059 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * (x + y)) (λ (_x y) ↦ y) 2 1 (x + x)

end Sequence