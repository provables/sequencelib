/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053698 sequence
-/

namespace Sequence

@[OEIS := A053698, offset := 0, maxIndex := 39, derive := true]
def A053698 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x * x)) * (1 + x)

end Sequence