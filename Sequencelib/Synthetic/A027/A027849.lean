/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027849 sequence
-/

namespace Sequence

@[OEIS := A027849, offset := 0, maxIndex := 30, derive := true]
def A027849 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (((2 * (2 + (x + x))) + x) * x)) * (1 + x)

end Sequence