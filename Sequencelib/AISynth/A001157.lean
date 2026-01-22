/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001157 sequence
-/

namespace Sequence

@[OEIS := A001157, offset := 1, maxIndex := 100, derive := true]

def A001157 (n : ℕ) : ℕ := ∑ d in n.divisors, d ^ 2


end Sequence