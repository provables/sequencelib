/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092907 sequence
-/

namespace Sequence

@[OEIS := A092907, offset := 0, maxIndex := 21, derive := true]
def A092907 (x : ℕ) : ℤ :=
  comprN (λ (x) ↦ ((x / 2) / (1 + 4)) % (2 + (2 * 4))) x

end Sequence