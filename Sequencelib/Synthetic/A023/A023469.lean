/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023469 sequence
-/

namespace Sequence

@[OEIS := A023469, offset := 0, maxIndex := 60, derive := true]
def A023469 (x : ℕ) : ℤ :=
  x - loop (λ (x y) ↦ (x * x) + y) 2 2

end Sequence