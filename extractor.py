def translate(audio_file):
    """Returns a list of dicts with keys 'timestamp' and 'text'."""
    asr_pipeline = pipeline(
        "automatic-speech-recognition",
        model="openai/whisper-base",
    )
    results = asr_pipeline(
        audio_file,
        max_new_tokens=256,
        generate_kwargs={"task": "transcribe"},
        return_timestamps=True,
        chunk_length_s=30,
        batch_size=8,
    )
    return results['chunks']
