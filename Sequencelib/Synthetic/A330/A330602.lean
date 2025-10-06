/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330602 sequence
-/

namespace Sequence

@[OEIS := A330602, offset := 0, maxIndex := 100, derive := true]
def A330602 (x : ℕ) : ℕ :=
  Int.toNat <| ((x % 2) * (1 + x)) + (x / 2) % 2

end Sequence