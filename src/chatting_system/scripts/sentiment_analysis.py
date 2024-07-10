from nltk.sentiment.vader import SentimentIntensityAnalyzer

# Extend the lexicon (not shown here, but you would add words and their sentiment scores)
# Customize the rules if necessary

# Initialize VADER sentiment analyzer
sid = SentimentIntensityAnalyzer()

# Example sentences
sentences = [
    "I am happy today!",
    "This movie made me sad.",
    "The customer service was confusing.",
    "I am angry about the delay.",
    "It was a neutral response.",
]

# Iterate over sentences and analyze sentiment
for sentence in sentences:
    scores = sid.polarity_scores(sentence)
    # Determine the sentiment label based on scores
    if scores['compound'] >= 0.05:
        sentiment = 'happy'
    elif scores['compound'] <= -0.05:
        sentiment = 'angry'
    elif scores['compound'] > -0.05 and scores['compound'] < 0.05:
        sentiment = 'confused'
    elif scores['compound'] == 0:
        sentiment = 'neutral'
    else:
        sentiment = 'sad'

    print(f"Sentence: {sentence}")
    print(f"Sentiment: {sentiment}")
    print(scores)
    print()
