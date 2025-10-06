/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160674 sequence
-/

namespace Sequence

@[OEIS := A160674, offset := 0, maxIndex := 35, derive := true]
def A160674 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x + x)) * ((((x * x) + x) * ((4 * 2) + 2)) + 1)

end Sequence