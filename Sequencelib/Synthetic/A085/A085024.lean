/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085024 sequence
-/

namespace Sequence

@[OEIS := A085024, offset := 0, maxIndex := 15, derive := true]
def A085024 (x : ℕ) : ℤ :=
  2 * loop (λ (x y) ↦ 2 + (x + y)) ((x + x) + x) 2

end Sequence