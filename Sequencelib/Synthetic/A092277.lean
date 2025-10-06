/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092277 sequence
-/

namespace Sequence

@[OEIS := A092277, offset := 0, maxIndex := 44, derive := true]
def A092277 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (2 + 4)) * (x * x)) + x

end Sequence