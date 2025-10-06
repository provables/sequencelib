/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028991 sequence
-/

namespace Sequence

@[OEIS := A028991, offset := 0, maxIndex := 100, derive := true]
def A028991 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((1 + (2 * ((2 * ((x + x) + x)) + x))) * (x / 2)) + x) + x) + x) * 2) + 1) + x) + x

end Sequence