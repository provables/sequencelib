/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129936 sequence
-/

namespace Sequence

@[OEIS := A129936, offset := 0, maxIndex := 46, derive := true]
def A129936 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x 0 - 2) - x

end Sequence