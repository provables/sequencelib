/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002011 sequence
-/

namespace Sequence

@[OEIS := A002011, offset := 0, maxIndex := 100, derive := true]
def A002011 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x y) ↦ 2 * (((x / y) + x) + x)) x 2

end Sequence