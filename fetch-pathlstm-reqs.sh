# Make directories
mkdir -p lib models

# Stanford CoreNLP
wget http://nlp.stanford.edu/software/stanford-corenlp-full-2016-10-31.zip
unzip stanford-corenlp-full-2016-10-31.zip
mv stanford-corenlp-full-2016-10-31/stanford-corenlp-3.7.0.jar lib

# Dependency parser + model files
wget -O ./lib/anna-3.3.jar https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/anna-3.3.jar
wget -O ./models/parse-eng.model https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/CoNLL2009-ST-English-ALL.anna-3.3.parser.model
wget -O ./models/tagger-eng.model https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/CoNLL2009-ST-English-ALL.anna-3.3.postagger.model
wget -O ./models/lemma-eng.model https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/CoNLL2009-ST-English-ALL.anna-3.3.lemmatizer.model

# SRL model
fetch-drive.sh 0B5aLxfs6OvZBYUk2b0hLZjNqY3c models/srl-ACL2016-eng.model
