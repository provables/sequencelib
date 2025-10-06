/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A200860 sequence
-/

namespace Sequence

@[OEIS := A200860, offset := 0, maxIndex := 38, derive := true]
def A200860 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((x * x) * x) - y) 2 2 * 2) * x

end Sequence