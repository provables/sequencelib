/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016843 sequence
-/

namespace Sequence

@[OEIS := A016843, offset := 0, maxIndex := 19, derive := true]
def A016843 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (_x y) ↦ y) 3 1 (loop (λ (x _y) ↦ (x + x) + 1) 2 x)

end Sequence