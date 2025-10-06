/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A308358 sequence
-/

namespace Sequence

@[OEIS := A308358, offset := 0, maxIndex := 80, derive := true]
def A308358 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((-x)) / (1 + (2 + 4))) / 2) + x) / 2) + x) / 2) + x) / 4

end Sequence