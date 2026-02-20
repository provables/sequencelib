import aiprover


def test_all():
    prover = aiprover.AIProver(config_path="/home/jstubbs/aiprover/config.yaml")
    data = prover.oeis_data.load_all_oeis_data()
    for tag, seq in data.items():
        task = aiprover.FormalizeOEISTask(
            aiprover=prover,
            max_tries=20,
            tag=tag,
            description=seq["desc"],
            values=seq["values"],
        )
        prover.process_task(task)


def test_core():
    # prover = aiprover.AIProver(config_path="/home/jstubbs/.aiprover/config.yaml")
    prover = aiprover.AIProver(config_path="/home/jstubbs/aiprover/config.yaml")
    # data = prover.oeis_data.load_all_oeis_data()
    data = prover.oeis_data.load_core_sequence_data()
    for tag, seq in data.items():
        task = aiprover.FormalizeOEISTask(
            aiprover=prover,
            max_tries=20,
            tag=tag,
            description=seq["desc"],
            values=seq["values"],
        )
        prover.process_task(task)


def test_single():
    # prover = aiprover.AIProver(config_path="/home/jstubbs/.aiprover/config.yaml")
    prover = aiprover.AIProver(config_path="/home/jstubbs/aiprover/config.yaml")
    # data = prover.oeis_data.load_all_oeis_data()
    data = prover.oeis_data.load_core_sequence_data()
    tag = next(iter(data))
    seq = data[tag]
    task = aiprover.FormalizeOEISTask(
        aiprover=prover,
        max_tries=20,
        tag=tag,
        description=seq["desc"],
        values=seq["values"],
    )
    prover.process_task(task)


def get_values():
    prover = aiprover.AIProver(config_path="/home/jstubbs/aiprover/config.yaml")
    # data = prover.oeis_data.load_all_oeis_data()
    data = prover.oeis_data.load_core_sequence_data()
    tag = next(iter(data))
    seq = data[tag]
    task = aiprover.FormalizeOEISTask(
        aiprover=prover,
        max_tries=20,
        tag=tag,
        description=seq["desc"],
        values=seq["values"],
    )
    return prover, data, tag, seq, task


# prover, data, tag, seq, task = get_values()
