/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000204 sequence
-/

namespace Sequence

@[OEIS := A000204, offset := 1, maxIndex := 100, derive := true]

def A000204 (n : ℕ) : ℕ :=
  if n = 0 then 0
  else if n = 1 then 1
  else ((fun p : ℕ × ℕ => (p.snd, p.fst + p.snd))^[n - 1] (1, 3)).fst


end Sequence