/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072442 sequence
-/

namespace Sequence

@[OEIS := A072442, offset := 0, maxIndex := 70, derive := true]
def A072442 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((((((((x * x) / (1 + (2 + 4))) + x) + x) + 1) / 2) + 2) + x) / 2) + x) + x) + 1) / 2) - 2) / (1 + x)) + 2) + x

end Sequence