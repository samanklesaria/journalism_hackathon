def translate(audio_file):
    asr_pipeline = pipeline(
        "automatic-speech-recognition",
        model="openai/whisper-base",
    )
    results = asr_pipeline(
        long_audio,
        max_new_tokens=256,
        generate_kwargs={"task": "transcribe"},
        return_timestamps=True,
        chunk_length_s=30,
        batch_size=8,
    )
