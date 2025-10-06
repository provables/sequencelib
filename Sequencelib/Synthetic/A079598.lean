/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079598 sequence
-/

namespace Sequence

@[OEIS := A079598, offset := 0, maxIndex := 15, derive := true]
def A079598 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (_x y) ↦ y + y) (x + x) 1 2

end Sequence