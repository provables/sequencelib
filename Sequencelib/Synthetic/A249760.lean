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

# A249760 sequence 
-/

namespace Sequence

@[OEIS := A249760, offset := 1]
def A249760 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x + x)) (x) (1)) (x) (2)


end Sequence
