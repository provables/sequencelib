/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A107394 sequence
-/

namespace Sequence

@[OEIS := A107394, offset := 0, maxIndex := 9, derive := true]
def A107394 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (y * ((y * y) - 1)) + x) (2 + x) 0

end Sequence