/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257164 sequence
-/

namespace Sequence

@[OEIS := A257164, offset := 0, maxIndex := 66, derive := true]
def A257164 (x : ℕ) : ℕ :=
  Int.toNat <| (x + x) % (1 + 4)

end Sequence