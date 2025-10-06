/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A331952 sequence
-/

namespace Sequence

@[OEIS := A331952, offset := 0, maxIndex := 100, derive := true]
def A331952 (x : ℕ) : ℤ :=
  (x * x) - loop (λ (x y) ↦ (y / 2) + x) x 1

end Sequence