/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275704 sequence
-/

namespace Sequence

@[OEIS := A275704, offset := 0, maxIndex := 100, derive := true]
def A275704 (x : ℕ) : ℕ :=
  Int.toNat <| (((3 + x) * x) % (1 + (2 * 4))) + 1

end Sequence