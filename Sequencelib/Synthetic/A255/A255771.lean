/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255771 sequence
-/

namespace Sequence

@[OEIS := A255771, offset := 0, maxIndex := 10, derive := true]
def A255771 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ x * y) (x % 3) 3 % (1 + x)) / 2) + 1

end Sequence