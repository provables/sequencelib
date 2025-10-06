/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112089 sequence
-/

namespace Sequence

@[OEIS := A112089, offset := 0, maxIndex := 5, derive := true]
def A112089 (x : ℕ) : ℤ :=
  1 + (loop (λ (x y) ↦ 2 * (x - y)) x x / 2)

end Sequence