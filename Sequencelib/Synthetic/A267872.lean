/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267872 sequence
-/

namespace Sequence

@[OEIS := A267872, offset := 0, maxIndex := 100, derive := true]
def A267872 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((2 % (1 + x)) * x)

end Sequence