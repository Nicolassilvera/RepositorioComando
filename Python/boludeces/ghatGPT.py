import os
import openai
openai.organization = "de nico"
openai.api_key = os.getenv("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")
openai.Model.list()