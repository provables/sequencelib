/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277986 sequence
-/

namespace Sequence

@[OEIS := A277986, offset := 0, maxIndex := 43, derive := true]
def A277986 (x : ℕ) : ℤ :=
  2 * (loop (λ (x _y) ↦ (2 * ((x + x) + x)) - 1) 2 x + x)

end Sequence