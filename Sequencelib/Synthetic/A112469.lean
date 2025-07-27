/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A112469 sequence 
-/

namespace Sequence

@[OEIS := A112469, offset := 0, derive := true, maxIndex := 10]
def A112469 (n : ℕ) : ℤ :=
  let x := n - 0
  (2 - loop2 (λ(x y : ℤ) ↦ (y - x)) (λ(x y : ℤ) ↦ x) (x) (1) (2))


end Sequence
