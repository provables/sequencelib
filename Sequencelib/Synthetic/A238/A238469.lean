/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A238469 sequence
-/

namespace Sequence

@[OEIS := A238469, offset := 0, maxIndex := 90, derive := true]
def A238469 (x : ℕ) : ℤ :=
  ((loop (λ (x y) ↦ (y * y) + x) (x + x) 1 % (1 + (2 + 4))) - 1) / 3

end Sequence