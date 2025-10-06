/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024085 sequence
-/

namespace Sequence

@[OEIS := A024085, offset := 0, maxIndex := 17, derive := true]
def A024085 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) x 1 - loop (λ (x _y) ↦ (x * x) * x) 2 x * x

end Sequence