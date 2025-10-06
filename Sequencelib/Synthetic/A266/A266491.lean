/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266491 sequence
-/

namespace Sequence

@[OEIS := A266491, offset := 0, maxIndex := 64, derive := true]
def A266491 (x : ℕ) : ℕ :=
  Int.toNat <| (((x / 2) % 2) * x) + x

end Sequence