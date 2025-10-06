/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001761 sequence
-/

namespace Sequence

@[OEIS := A001761, offset := 0, maxIndex := 100, derive := true]
def A001761 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 + y) * x) (λ (_x y) ↦ 1 + y) (x - 1) 1 x

end Sequence