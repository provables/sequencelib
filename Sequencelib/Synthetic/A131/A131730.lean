/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131730 sequence
-/

namespace Sequence

@[OEIS := A131730, offset := 0, maxIndex := 100, derive := true]
def A131730 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ ((((((x * y) - y) % 4) / 2) * x) % 4) - x) x x / 2) / 2

end Sequence