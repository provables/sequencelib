/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001519 sequence
-/

namespace Sequence

@[OEIS := A001519, offset := 0, maxIndex := 100, derive := true]

def A001519 (n : ℕ) : ℕ :=
  ((fun p : ℕ × ℕ => (p.snd, 3 * p.snd - p.fst))^[n] (1, 1)).fst


end Sequence