/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275876 sequence
-/

namespace Sequence

@[OEIS := A275876, offset := 0, maxIndex := 100, derive := true]
def A275876 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ (((y - 1) - 2) * y) + x) x x * 2) * 2

end Sequence