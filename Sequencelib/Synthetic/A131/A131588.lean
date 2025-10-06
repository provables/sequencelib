/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131588 sequence
-/

namespace Sequence

@[OEIS := A131588, offset := 0, maxIndex := 32, derive := true]
def A131588 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (x + x) + y) x ((x % 2) + 1) 1

end Sequence