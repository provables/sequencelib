/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A068082 sequence
-/

namespace Sequence

@[OEIS := A068082, offset := 0, maxIndex := 100, derive := true]
def A068082 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ x + x) (3 % y) x + 1) + x) x 1

end Sequence