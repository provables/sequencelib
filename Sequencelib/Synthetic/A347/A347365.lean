/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A347365 sequence
-/

namespace Sequence

@[OEIS := A347365, offset := 0, maxIndex := 64, derive := true]
def A347365 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * ((x % 2) * x)) + x

end Sequence