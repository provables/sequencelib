/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011671 sequence
-/

namespace Sequence

@[OEIS := A011671, offset := 0, maxIndex := 80, derive := true]
def A011671 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((x * x) * x) % (1 + (2 + 4))) + x) * x) % 3) % 2

end Sequence