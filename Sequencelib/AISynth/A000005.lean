/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000005 sequence
-/

namespace Sequence

@[OEIS := A000005, offset := 1, maxIndex := 100, derive := true]

def A000005 (n : ℕ) : ℕ :=
  (Nat.divisors n).card


end Sequence