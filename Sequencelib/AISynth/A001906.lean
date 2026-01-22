/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001906 sequence
-/

namespace Sequence

@[OEIS := A001906, offset := 0, maxIndex := 100, derive := true]

def A001906 (n : ℕ) : ℕ :=
  ((fun p : ℕ × ℕ => (p.snd, 3 * p.snd - p.fst))^[n] (0, 1)).fst


end Sequence