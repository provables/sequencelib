/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A061722 sequence
-/

namespace Sequence

@[OEIS := A061722, offset := 0, maxIndex := 100, derive := true]
def A061722 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + ((1 + 4) * (1 + (2 * (x * x))))

end Sequence