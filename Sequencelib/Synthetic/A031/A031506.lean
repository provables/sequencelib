/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A031506 sequence
-/

namespace Sequence

@[OEIS := A031506, offset := 0, maxIndex := 24, derive := true]
def A031506 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ (1 % x) + x) (x + x) 1 2

end Sequence